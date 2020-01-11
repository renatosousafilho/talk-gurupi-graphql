module Types
  class QueryType < Types::BaseObject
    field :directors, [Types::DirectorType], null: false,
      description: "Return a list of directors"
    field :movies, [Types::MovieType], null: false,
      description: "Return a list of directors"
    field :movie, Types::MovieType, null: true do
      argument :id, ID, required: true
    end
    field :director, Types::DirectorType, null: true do
      argument :id, ID, required: true
    end
    
    def directors
      Director.all.order(name: :asc)
    end

    def movies
      Movie.includes(:director).all.order(name: :asc) 
    end

    def movie(id:)
      Movie.includes(:director).find_by(id)
    end

    def director(id:)
      Director.joins(:movies).includes(:movies).find_by(id)
    end
  end
end
