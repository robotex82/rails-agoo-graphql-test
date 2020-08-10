Frontend::Engine.routes.draw do
  mount Frontend::GraphqlApp, at: '/graphql'
end
