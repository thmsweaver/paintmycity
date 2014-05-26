class AddImageUrlToCompositions < ActiveRecord::Migration
  def change
    add_column :compositions, :image_url, :text
  end
end
