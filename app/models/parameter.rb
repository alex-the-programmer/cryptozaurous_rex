class Parameter < ApplicationRecord
  belongs_to :strategy
  has_many :parameter_values, dependent: :destroy

  validates_presence_of :name
end
