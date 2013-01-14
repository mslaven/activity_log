class ActivityLogEntry < ActiveRecord::Base
  
  validates :uid, :presence => true
  validates :data, :presence => true
  
  attr_accessible :uid, :data

  before_save :set_defaults

  def set_defaults
  	self.uid = 0 unless self.uid
  	self.data = "" unless self.data
  end

end