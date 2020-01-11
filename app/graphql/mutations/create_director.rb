# frozen_string_literal: true

module Mutations
  class CreateDirector < BaseMutation
    argument :name, String, required: true
    argument :country, String, required: true

    field :director, Types::DirectorType, null: true
    field :errors, Types::ValidationErrorsType, null: true

    def resolve(name:, country:)
      director = Director.new(
        name: name,
        country: country
      )

      if director.save
        { director: director }
      else
        { errors: director.errors }
      end
    end
  end
end
