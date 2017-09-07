class AddPositionToPortFolios < ActiveRecord::Migration[5.0]
  def change
    add_column :port_folios, :position, :integer
  end
end
