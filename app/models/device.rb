class Device < ActiveRecord::Base
  validates_presence_of :serial_number
  validates_presence_of :model_number
  validates_presence_of :tag
  validates_presence_of :type
  validates_presence_of :pool_id
end
