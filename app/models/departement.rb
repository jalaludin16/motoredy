class Departement < ApplicationRecord
    has_many :users
    has_many :problems
end
