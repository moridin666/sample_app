SampleApp::Application.routes.draw do
  
  get "users/new"
  root 'static_pages#home'
  match 'static_pages/help', to: 'static_pages#help', via: 'get'
  match 'static_pages/about', to: 'static_pages#about', via: 'get'
  match 'static_pages/contact', to: 'static_pages#contact', via: 'get'
  match 'users/signup', to: 'users#new', via: 'get'
end
