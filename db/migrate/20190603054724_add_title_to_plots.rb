class AddTitleToPlots < ActiveRecord::Migration[5.2]
  def change
    add_column :plots, :title, :string
    add_column :plots, :plan_granted, :boolean
    add_column :plots, :ownership_type, :string
  end
end
