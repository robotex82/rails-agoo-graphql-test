Backend::Engine.routes.draw do
  mount Backend::GraphqlApp, at: '/graphql'
end
