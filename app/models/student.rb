class Student < ApplicationRecord
  before_save { self.email = email.downcase }
  validates :name, presence: true,
                   uniqueness: {case_sensitive: false},
                   length: {minimum: 3, maximum: 25}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence: true,
                    length: {maximum: 105},
                    format: {with: VALID_EMAIL_REGEX}
  has_many :lists
  has_secure_password
end
