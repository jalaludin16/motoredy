class User < ApplicationRecord
  has_many :solutions
  has_many :problems

  belongs_to :jabatan
  belongs_to :gerbang
  belongs_to :departement


  validates :ndk, uniqueness: true
end
