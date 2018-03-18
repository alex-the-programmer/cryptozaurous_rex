class AddIndexesToTables < ActiveRecord::Migration[5.1]
  def change
    add_index :currencies, :name, unique: true
    add_index :markets, :name, unique: true
    add_index :parameter_values, [:parameter_id, :value], unique: true
    add_index :parameter_values_permutations, [:permutation_id, :parameter_value_id], unique: true, name: 'index_parameter_values_permutations_unique'
    add_index :parameters, [:strategy_id, :name], unique: true
    add_index :strategies, :name, unique: true
    add_index :time_frames, [:from, :to], unique: true
    add_index :runs, [:back_test_id, :permutation_id], unique: true
    add_index :back_tests, [:from_currency_id, :to_currency_id, :strategy_id, :time_frame_id, :market_id], unique: true, name: 'index_back_tests_unique'
  end
end
