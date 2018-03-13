class ParameterValue < ApplicationRecord
  validates_uniqueness_of :value
end
