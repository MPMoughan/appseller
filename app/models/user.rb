class User < ActiveRecord::Base

  # has_secure_password

  has_many :items
  has_many :transactions, :through => :items

  validates :email,
    uniqueness: true,
    presence: true,
    format: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :password,
    presence: true,
    length: {minimum: 5},
    on: :create
end