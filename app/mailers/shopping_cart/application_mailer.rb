module ShoppingCart
  class ApplicationMailer < ActionMailer::Base
    default from: 'noreply@bookstore.com'
    layout 'mailer'

    def order_email(email, order_id)
      @order_id = order_id
      @email = email
      mail(to: email, subject: I18n.t(:thank_you))
    end
  end
end
