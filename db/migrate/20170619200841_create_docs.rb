class CreateDocs < ActiveRecord::Migration[5.0]
  def change
    create_table :docs do |t|
      t.string :photo_front
      t.string :photo_back
      t.string :photo1
      t.string :photo2
      t.boolean :is_ready
      t.references :pprofile, foreign_key: true, index: true
      t.timestamps
    end
  end
end
