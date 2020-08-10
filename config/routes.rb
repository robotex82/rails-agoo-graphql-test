Rails.application.routes.draw do
  mount Frontend::Engine, at: '/'
  mount Backend::Engine, at: '/backend'

  mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql", as: :graphiql
  mount GraphiQL::Rails::Engine, at: "/backend/graphiql", graphql_path: "/backend/graphql", as: :graphiql_backend
end
