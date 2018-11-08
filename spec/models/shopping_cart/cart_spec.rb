require 'rails_helper'

module ShoppingCart
  RSpec.describe Cart, type: :model do
    context 'relations' do
      it { is_expected.to have_many(:order_items).dependent(:destroy) }
    end

    context 'attributes' do
      it { is_expected.to have_db_column(:coupon_code).of_type(:string) }
      it { is_expected.to have_db_column(:coupon_price).of_type(:decimal).with_options(precision: 8, scale: 2) }
    end
  end
end
