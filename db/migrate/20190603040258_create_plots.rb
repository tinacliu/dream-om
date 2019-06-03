class CreatePlots < ActiveRecord::Migration[5.2]
  def change
    create_table :plots do |t|
      t.integer :price
      t.string :address
      t.float :longtitude
      t.float :latitude
      t.string :property_type
      t.string :location
      t.integer :plot_size
      t.integer :floor_size
      t.integer :num_bathrooms
      t.integer :num_bedrooms
      t.integer :num_recepts
      t.integer :num_floors
      t.boolean :has_garden
      t.boolean :has_attic
      t.string :floor_plan_url
      t.string :image_url
      t.text :description
      t.datetime :first_published_date
      t.datetime :last_published_date
      t.string :agent_name
      t.string :agent_phone
      t.string :agent_email

      t.timestamps
    end
  end
end
