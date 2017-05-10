class CreatePprofiles < ActiveRecord::Migration[5.0]
  def change
    create_table :pprofiles do |t|
      t.string :name
      t.integer :phone_number
      t.string :city
      t.string :site
      t.string :instagram
      t.string :twitter
      t.string :forum
      t.string :description

      t.timestamps
    end
  end
end
