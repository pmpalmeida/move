class RemovePprofileFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_reference :users, :pprofile, foreign_key: true
  end
end
