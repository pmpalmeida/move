class AddPhotoToPprofilePhoto < ActiveRecord::Migration[5.0]
  def change
    add_column :pprofile_photos, :photo1, :string
    add_column :pprofile_photos, :photo2, :string
    add_column :pprofile_photos, :photo3, :string
    add_column :pprofile_photos, :photo4, :string
    add_column :pprofile_photos, :photo5, :string
    add_column :pprofile_photos, :photo6, :string
    add_column :pprofile_photos, :photo7, :string
  end
end

