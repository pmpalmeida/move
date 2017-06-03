class AddNeighborhoodToPprofiles < ActiveRecord::Migration[5.0]
  def change
    add_column :pprofiles, :neighborhood, :string
  end
end
