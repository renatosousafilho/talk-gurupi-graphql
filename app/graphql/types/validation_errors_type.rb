module Types
  class ValidationErrorsType < Types::BaseObject
    field :full_messages, [String], null: false
  end
end
