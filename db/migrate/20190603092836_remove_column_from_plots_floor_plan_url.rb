class RemoveColumnFromPlotsFloorPlanUrl < ActiveRecord::Migration[5.2]
  def change
    remove_column :plots, :floor_plan_url
  end
end
