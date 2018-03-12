class CreateStrategies < ActiveRecord::Migration[5.1]
  def change
    create_table :strategies do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
