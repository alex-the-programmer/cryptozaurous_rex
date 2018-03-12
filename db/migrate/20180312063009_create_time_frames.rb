class CreateTimeFrames < ActiveRecord::Migration[5.1]
  def change
    create_table :time_frames do |t|
      t.date :from, null: false
      t.date :to, null: false
      t.interval :duration, null: false

      t.timestamps
    end
  end
end
