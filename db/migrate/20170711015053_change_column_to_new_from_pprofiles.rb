class ChangeColumnToNewFromPprofiles < ActiveRecord::Migration[5.0]
  def change
    remove_column :pprofiles, :description, :string
  end
end
