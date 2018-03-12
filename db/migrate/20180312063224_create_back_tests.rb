class CreateBackTests < ActiveRecord::Migration[5.1]
  def change
    create_table :back_tests do |t|
      t.belongs_to :currency, foreign_key: 'from_currency', null: false
      t.belongs_to :currency, foreign_key: 'to_currency', null: false
      t.belongs_to :strategy, null: false
      t.belongs_to :time_frame, null: false
      t.belongs_to :market, null: false

      t.string :name, null: false
      t.string :status, default: :new, null: false

      t.timestamps
    end
  end
end
