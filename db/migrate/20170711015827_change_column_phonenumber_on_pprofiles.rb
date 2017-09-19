class ChangeColumnPhonenumberOnPprofiles < ActiveRecord::Migration[5.0]
  def change
    remove_column :pprofiles, :phone_number, :integer
  end
end
