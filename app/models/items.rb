class Items < ActiveRecord::Base
  belongs_to :transaction
  has_one :category
end