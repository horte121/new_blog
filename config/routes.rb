Rails.application.routes.draw do
  resources :new_blogs
  get "new_blogs/lol", to: "new_blogs#lol"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
