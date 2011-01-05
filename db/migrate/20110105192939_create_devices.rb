class CreateDevices < ActiveRecord::Migration
  def self.up
    create_table :devices do |t|
      t.string :serial_number
      t.string :model_number
      t.string :type
      t.string :tag
      t.integer :user_id
      t.integer :pool_id

      t.timestamps
    end
  end

  def self.down
    drop_table :devices
  end
end
