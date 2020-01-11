module Types
  class DirectorType < BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :country, String, null: true
    field :movies, [Types::MovieType], null: true
  end
end
