class CreateArchitects < ActiveRecord::Migration[5.2]
  def change
    create_table :architects do |t|
      t.string :name
      t.string :website_url
      t.text :bio
      t.string :portfoio_url, array: true, default: []
      t.boolean :available
      t.string :speciality
      t.integer :min_project_budget
      t.datetime :appt_times, array: true, default: []
      t.integer :appt_rate

      t.timestamps
    end
  end
end
