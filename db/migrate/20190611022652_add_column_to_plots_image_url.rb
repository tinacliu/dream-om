class AddColumnToPlotsImageUrl < ActiveRecord::Migration[5.2]
  def change
    add_column :plots, :image_urls, :string, default: [], array: true
  end
end
