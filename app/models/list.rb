class List < ApplicationRecord
  validates :student_id, presence: true, length: {minimum: 10, maximum: 100}
  validates :description, presence: true, length: {minimum: 10, maximum: 100}
  validates :title, presence: true, length: {minimum: 10, maximum: 100}
end
