class Rule < ApplicationRecord
  belongs_to :game
  has_one_attached :pdf
end
