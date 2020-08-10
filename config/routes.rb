Rails.application.routes.draw do
  mount Frontend::Engine, at: '/'
  mount Backend::Engine, at: '/backend'
end
