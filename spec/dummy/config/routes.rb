Rails.application.routes.draw do
  scope '(:locale)', locale: /en/ do
    devise_for :users
    resources :books
    mount ShoppingCart::Engine => '/shopping_cart'
  end
end
