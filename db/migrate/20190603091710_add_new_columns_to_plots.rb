class AddNewColumnsToPlots < ActiveRecord::Migration[5.2]
  def change
    add_column :plots, :listing_id, :string
    add_column :plots, :details_url, :string
    add_column :plots, :price_change, :string, array: true, default: []
  end
end
