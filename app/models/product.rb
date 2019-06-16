class Product < ActiveRecord::Base
  has_many :ordered_products
  has_many :orders, :through => :ordered_products

  def is_available?
<<<<<<< HEAD
    self.inventory > 0 ? 'true' : 'false'
=======
    self.inventory ? 'true' : 'false'
>>>>>>> 978e883bef88b8be0e5c671c5f7578e2f2b2e077
  end
end
