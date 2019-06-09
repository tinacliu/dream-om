class UpdatePortfolioUrLtoArchitects < ActiveRecord::Migration[5.2]
  def change
    rename_column :architects, :portfoio_url, :portfolio_url
  end
end
