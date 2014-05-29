class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :entry
      t.references :composition
      t.references :user
      t.timestamps
    end
  end
end
