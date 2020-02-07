class Pet < ApplicationRecord
  # Validations
  validates :name, :breed, :gender, :size, presence: true
end
