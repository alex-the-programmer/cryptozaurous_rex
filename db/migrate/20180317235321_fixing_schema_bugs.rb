class FixingSchemaBugs < ActiveRecord::Migration[5.1]
  def change
    rename_column :currencies, :currency, :name
    change_column_null :parameter_values, :value, false
    change_column_null :runs, :permutation_id, false
    change_column_null :runs, :score, false
  end
end
