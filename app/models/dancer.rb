class Dancer < ApplicationRecord
  has_many :seeks
  has_many :comps, through: :seeks
end
