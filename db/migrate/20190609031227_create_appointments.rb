class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.references :project, foreign_key: true
      t.references :architect, foreign_key: true
      t.datetime :appt_time

      t.timestamps
    end
  end
end
