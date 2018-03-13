class CreateParameterValues < ActiveRecord::Migration[5.1]
  def change
    create_table :parameter_values do |t|
      t.belongs_to :parameter, null: false
      t.string :value

      t.timestamps
    end

    add_foreign_key :parameter_values, :parameters
  end
end
