class User < ApplicationRecord
  has_secure_password

  has_many :csvs

  validates :email, presence: true, uniqueness: true
end
