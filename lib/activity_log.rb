require "activity_log/version"

module ActivityLog

  def self.log(owner_id, data)
  	if owner_id.nil?
  		return false
  	elsif data.nil?
  		return false
  	else
  		ActivityLogEntry.create(:uid => owner_id, :data => data)
  		return true
  	end
  end

  def self.get_by_owner(owner_id)
  	ActivityLogEntry.all(:conditions => {:uid => owner_id})
  end

  def self.get_by_id(id)
  	ActivityLogEntry.find_by_id(id)
  end
end
