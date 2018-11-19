ShoppingCart::Engine.routes.draw do
  resources :carts, only: %i[show update]
  resources :orders, only: %i[index create show]
  resources :checkouts, only: %i[index show update]
  resources :products, shallow: true do
    resources :order_items, only: %i[create destroy] do
      member do
        put :decrement
        put :increment
      end
    end
  end
end
