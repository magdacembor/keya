class Boat < ApplicationRecord
  validates: :name, :description, :colour, presence: true
end
