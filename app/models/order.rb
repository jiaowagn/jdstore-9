class Order < ApplicationRecord
  validates_presence_of :billing_name, :billing_address, :shipping_name, :shipping_address
  before_create :generate_token

  belongs_to :user
  has_many :product_lists

  def generate_token
    self.token = SecureRandom.uuid
  end
end
