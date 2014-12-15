class User < ActiveRecord::Base
  has_secure_password

  has_many :items_users
  has_many :items, :through => :items_users

  validates :username,
    uniqueness: true,
    presence: true

  validates :email,
    uniqueness: true,
    presence: true,
    format: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :password,
    presence: true,
    length: {minimum: 5},
    on: :create

  validates :password_confirmation,
    presence: true,
    length: {minimum: 5},
    on: :create

  validates :password_digest,
    presence: true

  validates :location,
    presence: true



end