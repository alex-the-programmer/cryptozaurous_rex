class Permutation < ApplicationRecord
  has_many :parameter_values_permutations
  has_many :parameter_values, through: :parameter_values_permutations
end
