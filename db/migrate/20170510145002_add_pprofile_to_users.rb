class AddPprofileToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :pprofile, foreign_key: true
  end
end
