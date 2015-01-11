class User < ActiveRecord::Base
  has_sercure_password
  validates :name, presence: true
  validates :email, format: { with: VALID_EMAIL_REGEX }, uniquness: { case_sensitive: true }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
end
