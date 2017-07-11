class AddPhotosToPprofile < ActiveRecord::Migration[5.0]
  def change

    add_column :pprofiles, :photo_profile, :string, default: "http://s4.storage.akamai.coub.com/get/b30/p/coub/simple/cw_timeline_pic/f41ea52c56a/40e3a11a1224c3423d307/med_1409617522_1382490910_image.jpg"
    add_column :pprofiles, :photo1, :string, default: "http://s4.storage.akamai.coub.com/get/b30/p/coub/simple/cw_timeline_pic/f41ea52c56a/40e3a11a1224c3423d307/med_1409617522_1382490910_image.jpg"
    add_column :pprofiles, :photo2, :string
    add_column :pprofiles, :photo3, :string
    add_column :pprofiles, :photo4, :string
    add_column :pprofiles, :photo5, :string
    add_column :pprofiles, :photo6, :string
    add_column :pprofiles, :photo7, :string

  end
end
