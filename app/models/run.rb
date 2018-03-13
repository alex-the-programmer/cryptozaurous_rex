class Run < ApplicationRecord
  belongs_to :back_test
  belongs_to :permutation

  validates :score, presence: true, numericality: true
end
