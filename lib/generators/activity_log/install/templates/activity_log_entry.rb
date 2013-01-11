class ActivityLogEntry < ActiveRecord::Base
  
  validates :uid, :presence => true
  validates :data, :presence => true
  
  attr_accessible :uid, :data

end