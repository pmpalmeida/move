class AddUserToPprofiles < ActiveRecord::Migration[5.0]
  def change
    add_reference :pprofiles, :user, foreign_key: true
  end
end
