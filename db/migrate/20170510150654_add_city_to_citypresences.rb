class AddCityToCitypresences < ActiveRecord::Migration[5.0]
  def change
    add_reference :citypresences, :city, foreign_key: true
  end
end
