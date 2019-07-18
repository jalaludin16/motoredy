class Solution < ApplicationRecord
    belongs_to :user
    belongs_to :problem

    validates :solusi, presence:  true, length: {minimum: 3}  
end
