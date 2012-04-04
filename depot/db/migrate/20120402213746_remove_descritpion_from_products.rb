class RemoveDescritpionFromProducts < ActiveRecord::Migration
  def self.up
    remove_column :products, :descritpion
    remove_column :orders, :adress
  end

  def self.down
    add_column :orders, :adress, :text
    add_column :products, :descritpion, :text
  end
end
