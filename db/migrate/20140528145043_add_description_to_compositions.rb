class AddDescriptionToCompositions < ActiveRecord::Migration
  def change
    add_column :compositions, :description, :text
  end
end
