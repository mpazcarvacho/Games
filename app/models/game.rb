class Game < ApplicationRecord
  has_many :partspics, dependent: :destroy
  has_one :gamepic, dependent: :destroy
  has_one :rule, dependent: :destroy

  accepts_nested_attributes_for :partspics, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :gamepic, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :rule, reject_if: :all_blank, allow_destroy: true
end
