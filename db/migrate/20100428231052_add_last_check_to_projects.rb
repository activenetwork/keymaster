class AddLastCheckToProjects < ActiveRecord::Migration
  def self.up
    add_column :projects, :last_check_at, :datetime
  end

  def self.down
    remove_column :projects, :last_check_at, :datetime
  end
end
