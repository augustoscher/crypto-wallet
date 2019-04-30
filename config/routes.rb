Rails.application.routes.draw do
  get 'welcome/index'
  #como o nome da rota e diferente do path, tem que usar o 'to:'
  get '/inicio', to: 'welcome#index'
  #cria todas as rotas válidas para coin. cria as 7 rotas default para o model.
  resources :coins
  #é possivel criar na mão
  #get '/coins', to 'coins#index'
   
  #indica a rota root
  root to: 'welcome#index'
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
