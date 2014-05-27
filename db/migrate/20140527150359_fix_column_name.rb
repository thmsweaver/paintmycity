class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :compositions, :latitute, :latitude
    rename_column :compositions, :longitute, :longitude
  end
end
