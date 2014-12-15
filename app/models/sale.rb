class Sale < ActiveRecord::Base
  has_many :items
  belongs_to :buyer, :class_name => 'User'
  belongs_to :seller, :class_name => 'User'
end