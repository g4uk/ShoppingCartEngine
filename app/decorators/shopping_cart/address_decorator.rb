module ShoppingCart
  class AddressDecorator < Draper::Decorator
    delegate_all

    def formatted_name
      "#{first_name} #{last_name}"
    end

    def formatted_city
      "#{city} #{zip}"
    end

    def formatted_phone
      "Phone #{phone}"
    end
  end
end
