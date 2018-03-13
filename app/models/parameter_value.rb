class ParameterValue < ApplicationRecord
  validates_uniqueness_of :value

  has_many :parameter_values_permutations
  has_many :permutations, through: :parameter_values_permutations
end
