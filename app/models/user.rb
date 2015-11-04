class User < ActiveRecord::Base
  self.table_name = "useras"
  has_many :products
end
