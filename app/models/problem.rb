class Problem < ApplicationRecord
    belongs_to :user
    belongs_to :categori
    belongs_to :priority

    has_many :solutions

    validates :deskripsi, presence: true, length: {minimum:3}

end
