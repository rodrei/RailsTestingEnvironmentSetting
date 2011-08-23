class AddPushedAtToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :pushed_at, :datetime
  end

  def self.down
    remove_column :users, :pushed_at
  end
end
