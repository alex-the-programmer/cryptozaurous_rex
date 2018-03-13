class BackTest < ApplicationRecord
  belongs_to :currency, foreign_key: :from_currency
  belongs_to :currency, foreign_key: :to_currency
  belongs_to :strategy
  belongs_to :time_frame
  belongs_to :market
  has_many :runs, dependent: :destroy

  validates_presence_of :name, :status
end
