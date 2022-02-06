class Partspic < ApplicationRecord
  belongs_to :game
  has_many_attached :pics
end
