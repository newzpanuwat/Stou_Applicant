class CreateApplicants < ActiveRecord::Migration[5.1]
  def change
    create_table :applicants do |t|
      t.string :ap_code
      t.string :ap_name
      t.text :ap_addr
      t.string :ap_sex
      t.string :ap_ed
      t.string :ap_maj

      t.timestamps
    end
  end
end
