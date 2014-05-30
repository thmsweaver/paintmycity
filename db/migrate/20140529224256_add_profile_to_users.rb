class AddProfileToUsers < ActiveRecord::Migration
  def change
    add_column :users, :profile, :text, default: "graffiti is one of the few tools you have if you have almost nothing. And even if you don't come up with a picture to cure world poverty you can make someone smile while they're having a piss."
  end
end
