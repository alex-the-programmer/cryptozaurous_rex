class CreateStatistics < ActiveRecord::Migration[5.1]
  def change
    create_table :statistics do |t|
      t.belongs_to :permutation, null: false
      t.belongs_to :back_test, null: false
      t.decimal :average_relative_profit, null: false
      t.decimal :relative_profit_sum, null: false
      t.integer :number_of_runs, null: false

      t.timestamps
    end

    add_foreign_key :statistics, :permutations
    add_foreign_key :statistics, :back_tests
  end
end
