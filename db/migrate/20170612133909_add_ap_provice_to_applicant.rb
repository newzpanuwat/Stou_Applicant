class AddApProviceToApplicant < ActiveRecord::Migration[5.1]
  def change
    add_column :applicants, :ap_province, :string
  end
end
