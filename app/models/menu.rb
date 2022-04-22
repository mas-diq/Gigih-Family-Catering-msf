class Menu < ApplicationRecord
  has_many :order_details
  has_many :category_menus
end
