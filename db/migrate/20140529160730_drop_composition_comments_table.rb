class DropCompositionCommentsTable < ActiveRecord::Migration
  def up
    drop_table :composition_comments
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
