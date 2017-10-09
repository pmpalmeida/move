class AddCitynameToPprofiles < ActiveRecord::Migration[5.0]
  def change

    remove_column :pprofiles, :city, :string
    add_column :pprofiles, :cityname, :string

  end
end
