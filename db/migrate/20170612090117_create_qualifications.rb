class CreateQualifications < ActiveRecord::Migration[5.1]
  def change
    create_table :qualifications do |t|
      t.text :qual_desc
      t.references :position
      t.references :applicant, foreign_key: true

      t.timestamps
    end
  end
end
