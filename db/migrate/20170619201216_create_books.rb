class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :photo1
      t.string :photo2
      t.string :photo3
      t.string :photo4
      t.string :photo5
      t.string :photo6
      t.string :photo7
      t.boolean :is_ready
      t.references :pprofile, foreign_key: true, index: true

      t.timestamps
    end
  end
end
