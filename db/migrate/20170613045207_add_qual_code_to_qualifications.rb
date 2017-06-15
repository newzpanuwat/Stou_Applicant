class AddQualCodeToQualifications < ActiveRecord::Migration[5.1]
  def change
    add_column :qualifications, :qual_code, :string
  end
end
