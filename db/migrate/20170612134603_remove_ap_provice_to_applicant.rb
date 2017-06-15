class RemoveApProviceToApplicant < ActiveRecord::Migration[5.1]
  def change
    remove_column :applicants, :ap_province, :string
  end
end
