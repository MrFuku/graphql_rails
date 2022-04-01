# frozen_string_literal: true

module Types
  class LabelType < Types::BaseObject
    field :id, ID, null: false
    field :post, PostType, null: true
    field :name, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
