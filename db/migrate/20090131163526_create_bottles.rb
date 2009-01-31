class CreateBottles < ActiveRecord::Migration
  def self.up
    create_table :bottles do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :bottles
  end
end
