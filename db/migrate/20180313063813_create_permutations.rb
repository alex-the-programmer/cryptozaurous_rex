class CreatePermutations < ActiveRecord::Migration[5.1]
  def change
    create_table :permutations do |t|

      t.timestamps
    end
  end
end
