class DeleteDescription < ActiveRecord::Migration
  def change
    remove_column :compositions, :description
  end
end
