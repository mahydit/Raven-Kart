class Store < ApplicationRecord
  has_many :products
  has_many :order_products, through: :products
  belongs_to :user

  def pending_requests
    self.order_products.where(status_id: 1)
  end
  
  def confirmed_requests
    self.order_products.where(status_id: 2)
  end

end
