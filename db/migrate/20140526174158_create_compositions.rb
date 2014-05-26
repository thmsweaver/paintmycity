class CreateCompositions < ActiveRecord::Migration
  def change
    create_table :compositions do |t|
      t.string :title
      t.decimal :latitute
      t.decimal :longitute
      t.references :user
    end
  end
end
