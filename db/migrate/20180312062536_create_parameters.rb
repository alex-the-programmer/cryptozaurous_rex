class CreateParameters < ActiveRecord::Migration[5.1]
  def change
    create_table :parameters do |t|
      t.belongs_to :strategy, null: false
      t.string :name, null: false

      t.timestamps
    end

    add_foreign_key :parameters, :strategies
  end
end
