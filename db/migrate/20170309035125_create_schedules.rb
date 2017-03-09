class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.datetime :day
      t.references :doctor, foreign_key: true
      t.references :patient, foreign_key: true
      t.references :receptionist, foreign_key: true
      t.references :comment, foreign_key: true

      t.timestamps
    end
  end
end
