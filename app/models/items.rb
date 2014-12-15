class Items < ActiveRecord::Base
  belongs_to :sale
  has_one :category
end