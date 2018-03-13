class CreateBackTests < ActiveRecord::Migration[5.1]
  def change
    create_table :back_tests do |t|
      t.integer :from_currency_id, null: false
      t.integer :to_currency_id, null: false
      t.belongs_to :strategy, null: false
      t.belongs_to :time_frame, null: false
      t.belongs_to :market, null: false

      t.string :name, null: false
      t.string :status, default: :new, null: false

      t.timestamps
    end

    add_foreign_key :back_tests, :currencies, column: :from_currency_id
    add_foreign_key :back_tests, :currencies, column: :to_currency_id
    add_foreign_key :back_tests, :strategies
    add_foreign_key :back_tests, :time_frames
    add_foreign_key :back_tests, :markets
  end
end
