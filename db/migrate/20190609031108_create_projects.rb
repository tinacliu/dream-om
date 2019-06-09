class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.integer :budget
      t.text :brief
      t.string :plot_postcode
      t.string :category

      t.timestamps
    end
  end
end
