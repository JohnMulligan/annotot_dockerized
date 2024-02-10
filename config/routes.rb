Rails.application.routes.draw do
  # Rails.application.routes.draw do
  mount Annotot::Engine => '/annotations'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
