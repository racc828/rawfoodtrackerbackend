class Pet < ApplicationRecord
    belongs_to :user
    has_many :portions
    has_many :meals
end
