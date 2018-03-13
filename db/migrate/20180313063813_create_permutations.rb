class CreatePermutations < ActiveRecord::Migration[5.1]
  def change
    create_table :permutations do |t|
      t.timestamps
    end

    create_join_table :permutations, :parameter_values
    add_foreign_key :parameter_values_permutations, :parameter_values
    add_foreign_key :parameter_values_permutations, :permutations
  end
end
