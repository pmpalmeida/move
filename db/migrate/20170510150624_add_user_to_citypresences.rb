class AddUserToCitypresences < ActiveRecord::Migration[5.0]
  def change
    add_reference :citypresences, :user, foreign_key: true
  end
end
