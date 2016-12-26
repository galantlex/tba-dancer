class Comp < ApplicationRecord
  has_many :seeks
  has_many :users, through: :seeks
end
