class CreatePprofilePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :pprofile_photos do |t|
      t.references :pprofile, foreign_key: true

      t.timestamps
    end
  end
end
