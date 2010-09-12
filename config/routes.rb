ActionController::Routing::Routes.draw do |map|
  map.rubyamf_gateway 'rubyamf_gateway', :controller => 'rubyamf', :action => 'gateway'

  map.resources :posts, :has_many => :comments

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
