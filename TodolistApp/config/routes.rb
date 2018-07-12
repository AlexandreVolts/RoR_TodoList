Rails.application.routes.draw do
  root 'main#home'
  get '/todo/:id' => 'main#show'
  get '/error/:error' => 'main#error'
  get '*unmatched_route', to: 'main#not_found'
  delete '/todo/:id' => 'main#delete'
  post '/' => 'main#add'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
