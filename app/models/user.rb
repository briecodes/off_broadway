class User < ApplicationRecord
  has_secure_password

  has_many :scripts
  has_many :productions

  validates :username, uniqueness: true
  validates :username, format: { without: /\s/ }
  validates :username, presence: true
  validates :password, presence: true
end
