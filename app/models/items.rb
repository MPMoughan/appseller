class Items < ActiveRecord::Base
  belongs_to :user
  belongs_to :transaction
  has_one :category
end