# ShoppingCart
Super cute rails engine, which provides all functionality for checkout and managing orders.

## Installation
Add this line to your application's Gemfile:
```bash
gem 'shopping_cart', git: 'https://github.com/elinakolod/ShoppingCartEngine', branch: 'feature/engine'
```

it needs to be mounted in that application's config/routes.rb file:
```bash
  mount ShoppingCart::Engine, at: "/shopping_cart"
```

To copy migrations into the application run the following command:
```bash
$ bin/rails shopping_cart:install:migrations
```

Create a new initializer at config/initializers/shopping_cart.rb inside the application where the blorgh engine is installed and put this content in it:
```bash
ShoppingCart.user_class = "User"
ShoppingCart.product_class = "Product"
```
