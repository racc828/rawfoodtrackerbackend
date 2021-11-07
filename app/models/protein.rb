class Protein < ApplicationRecord
    has_many :bones
    has_many :livers
    has_many :organs
    has_many :muscles
end
