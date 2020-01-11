module Types
  class MovieType < BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :year, String, null: false
    field :director, Types::DirectorType, null: true
  end
end
