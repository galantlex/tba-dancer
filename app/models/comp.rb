class Comp < ApplicationRecord
  has_many :seeks
  has_many :dancers, through: :seeks
end
