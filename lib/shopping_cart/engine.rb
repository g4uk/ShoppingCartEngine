module ShoppingCart
  class Engine < ::Rails::Engine
    isolate_namespace ShoppingCart

    config.autoload_paths << File.expand_path('../lib/some/path', __FILE__)

    config.generators do |g|
      g.orm             :active_record
      g.template_engine :haml
      g.test_framework  :rspec
    end
  end
end
