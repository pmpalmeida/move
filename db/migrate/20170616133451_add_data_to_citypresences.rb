class AddDataToCitypresences < ActiveRecord::Migration[5.0]
  def change
    add_column :citypresences, :name, :string
    add_column :citypresences, :neighborhood, :string
    add_column :citypresences, :is_paid, :boolean
    add_column :citypresences, :start_date, :date
    add_column :citypresences, :end_date, :date
    add_column :citypresences, :is_under_date_limit, :boolean
  end
end
