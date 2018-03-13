class Statistic < ApplicationRecord
  belongs_to :permutation
  belongs_to :back_test

  validates_presence_of :average_relative_profitm, :relative_profit_sum, :number_of_runs
  validates_numericality_of :average_relative_profit, :relative_profit_sum, :number_of_runs
end
