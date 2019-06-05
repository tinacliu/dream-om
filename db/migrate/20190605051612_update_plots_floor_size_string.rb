class UpdatePlotsFloorSizeString < ActiveRecord::Migration[5.2]
  def change
    change_column :plots, :floor_size, :string
    change_column :plots, :plot_size, :string
  end
end
