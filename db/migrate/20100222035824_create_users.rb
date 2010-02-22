class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :login
      t.string :full_name
      t.text :public_ssh_key
      t.integer :uid

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
