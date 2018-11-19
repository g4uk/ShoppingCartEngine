class Image < ApplicationRecord
  belongs_to :book

  has_one_attached :photo, dependent: :destroy
end
