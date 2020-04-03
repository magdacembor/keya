class Boat < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :description, :colour, presence: true
end
