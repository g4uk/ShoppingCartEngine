module ShoppingCart
  class OrderItemDecorator < Draper::Decorator
    include ActionView::Helpers::NumberHelper
    delegate_all

    def formatted_total
      number_to_currency(total, precizion: 2)
    end

    def formatted_product_price
      number_to_currency(product_price, precizion: 2)
    end

    def product_description
      product.description.truncate(150).html_safe unless product.description.blank?
    end

    def product_image(css_class)
      h.image_tag image, class: css_class if image.attached?
    end
  end
end
