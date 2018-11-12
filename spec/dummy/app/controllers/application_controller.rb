class ApplicationController < ActionController::Base
  before_action :locale, :cart

  def locale
    I18n.locale = params[:locale] || I18n.default_locale
    Rails.application.routes.default_url_options[:locale] = I18n.locale
  end

  def cart
    @cart = ShoppingCart::Cart.find(session[:cart_id]).decorate
  rescue ActiveRecord::RecordNotFound
    @cart = ShoppingCart::Cart.create.decorate
    session[:cart_id] = @cart.id
  end
end
