class AddMoreColumnsToPlots < ActiveRecord::Migration[5.2]
  def change
    add_column :plots, :street_name, :string
    add_column :plots, :post_town, :string
    add_column :plots, :outcode, :string
  end
end
