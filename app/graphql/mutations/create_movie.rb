# frozen_string_literal: true

module Mutations
  class CreateMovie < BaseMutation
    argument :name, String, required: true
    argument :year, String, required: true
    argument :director_id, Int, required: true

    field  :movie, Types::MovieType, null: true
    field :errors, Types::ValidationErrorsType, null: true

    def resolve(name:, year:, director_id:)
      movie = Movie.new(
        name: name,
        year: year,
        director_id: director_id
      )

      if movie.save
        { movie: movie }
      else
        { errors: movie.errors }
      end
    end
  end
end
