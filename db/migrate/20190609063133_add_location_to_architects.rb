class AddLocationToArchitects < ActiveRecord::Migration[5.2]
  def change
    add_column :architects, :location, :string
  end
end
