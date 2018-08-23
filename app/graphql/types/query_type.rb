Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  # queries are just representated as fields
  field :allLinks, !types[Types::LinkType] do
    resolve -> (obj, args, ctx) { Link.all }
  end

  # field :oneLink, !types[Types::LinkType] do
  #   argument :id, types.Id
  #   resolve -> (obj, args, ctx) { Link.find(id) }
  # end
end
