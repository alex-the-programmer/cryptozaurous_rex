class Parameter < ApplicationRecord
  belongs_to :strategy

  validates_presence_of :name
end
