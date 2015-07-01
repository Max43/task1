#get '/orders', to: 'orders#create'
#get '/orders', to: 'orders#new'
get '/home', to: 'home#index'
resources 'orders', only: [:new, :create]
# Configure your routes here
# See: http://www.rubydoc.info/gems/lotus-router/#Usage
