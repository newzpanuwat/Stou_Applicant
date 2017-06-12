class CreatePositions < ActiveRecord::Migration[5.1]
  def change
    create_table :positions do |t|
      t.string :pos_name
      t.references :applicant, foreign_key: true

      t.timestamps
    end
  end
end
