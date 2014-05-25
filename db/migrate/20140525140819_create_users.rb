class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :remember_token
    end

# question: why do I specify email uniqueness in the index?
    add_index :users, :email, unique:true
    add_index :users, :remember_token
  end
end
