class AddLocationToCompositions < ActiveRecord::Migration
  def change
      add_column :compositions, :location, :string, :default => "Washington, DC"
  end
end
