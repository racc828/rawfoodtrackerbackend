class Meal < ApplicationRecord
    belongs_to :pet
    has_many :foods
end
