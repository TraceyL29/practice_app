class List < ApplicationRecord
  belongs_to :student
  validates :description, presence: true, length: {minimum: 10, maximum: 100}
  validates :title, presence: true, length: {minimum: 10, maximum: 100}
end
