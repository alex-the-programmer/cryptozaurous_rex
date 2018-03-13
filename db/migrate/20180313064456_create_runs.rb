class CreateRuns < ActiveRecord::Migration[5.1]
  def change
    create_table :runs do |t|
      t.belongs_to :back_test, null: false
      t.belongs_to :permutation
      t.decimal :score

      t.timestamps
    end

    add_foreign_key :runs, :back_tests
    add_foreign_key :runs, :permutations
  end
end
