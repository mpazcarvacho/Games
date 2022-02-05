class Game < ApplicationRecord
  has_many :partspics, dependent: :destroy
  has_one :gamepic, dependent: :destroy
  has_one :rule, dependent: :destroy
end
