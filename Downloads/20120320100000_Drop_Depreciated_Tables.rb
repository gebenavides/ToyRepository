class DropTables < ActiveRecord::Migration
  def self.up
    CreateCommands.down
    CreateServerStatuses.down   
    end
  end

  def self.down
    CreateServerStatuses.up
    CreateCommands.up
  end
end
