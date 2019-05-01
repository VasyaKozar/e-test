class Order < ApplicationRecord
	belongs_to :user
    belongs_to :product
  validates :ordercount, :comment, presence: true
end
