# frozen_string_literal: true

module Types
  class PostType < Types::BaseObject
    field :id, ID, null: false
    field :user, UserType, null: false
    field :label, LabelType, null: true
    field :body, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    def label
      Loaders::AssociationLoader.for(Post, :label).load(object)
    end
  end
end
