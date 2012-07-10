class DropDepreciatedTables < ActiveRecord::Migration
  def self.up
	drop_table :commands
	drop_table :server_statuses
  end

  def self.down
	create_table :server_statuses do |t|
		t.string :service
		t.string :fault
		t.string :message
		t.integer :parameter
		t.timestamps
	end

	create_table :commands do |t|
	      t.integer     :command, :default => 0
	      t.integer     :parameter, :default => 0
	      t.integer    :retvalue, :default => nil
	      t.binary      :blobdata, :limit => 1.kilobyte, :default => nil
	      t.datetime    :created_at
	      t.datetime    :updated_at
	      t.timestamps
        end
  end
end
