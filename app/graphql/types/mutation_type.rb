module Types
  class MutationType < Types::BaseObject
    # TODO: remove me
    field :create_director, mutation: Mutations::CreateDirector
    field :create_movie, mutation: Mutations::CreateMovie
  end
end
