class AddPositionToPortfolio < ActiveRecord::Migration[5.1]
  def change
    add_column :portfols, :position, :integer
  end
end
