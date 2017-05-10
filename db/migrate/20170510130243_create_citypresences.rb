class CreateCitypresences < ActiveRecord::Migration[5.0]
  def change
    create_table :citypresences do |t|

      t.timestamps
    end
  end
end
