class AddPhonenumberToPprofiles < ActiveRecord::Migration[5.0]
  def change
    add_column :pprofiles, :phone_number, :string
  end
end
