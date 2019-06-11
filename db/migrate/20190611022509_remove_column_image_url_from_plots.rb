class RemoveColumnImageUrlFromPlots < ActiveRecord::Migration[5.2]
  def change
    remove_column :plots, :image_url
  end
end
