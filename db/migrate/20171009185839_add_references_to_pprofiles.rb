class AddReferencesToPprofiles < ActiveRecord::Migration[5.0]
  def change
    add_reference :pprofiles, :doc, foreign_key: true
    add_reference :pprofiles, :city, foreign_key: true


    remove_column :pprofiles, :photo_profile, :string
    remove_column :pprofiles, :photo1, :string

    add_column :pprofiles, :photo_profile, :string
    add_column :pprofiles, :photo1, :string
  end
end
