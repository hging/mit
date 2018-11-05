class Menu < ApplicationRecord
  has_many :sub_menus
  default_scope {order(:zindex => :desc)}
end
