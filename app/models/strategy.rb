class Strategy < ApplicationRecord
  has_many :parameters, dependent: :destroy

  validates :name, presence: true, uniqueness: true
end
