class AddPosCodeToPositions < ActiveRecord::Migration[5.1]
  def change
    add_column :positions, :pos_code, :string
  end
end
