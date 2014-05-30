class AddDefaultToUsers < ActiveRecord::Migration
  def up
    change_column :users, :profile_picture, :text, :default => "http://www.clker.com/cliparts/4/p/3/I/V/d/large-man-woman-bathroom-sign.svg"
  end

  def down
    change_column :users, :profile_picture, :text, :default => nil
  end
end
