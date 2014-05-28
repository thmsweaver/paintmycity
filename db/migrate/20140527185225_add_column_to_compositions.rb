class AddColumnToCompositions < ActiveRecord::Migration
  def change
    add_column :compositions, :gmaps, :boolean
  end
end
