class AddNewColumnToPlots < ActiveRecord::Migration[5.2]
  def change
    add_column :plots, :floor_plan_url, :string, array: true, default: []
  end
end
