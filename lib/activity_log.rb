require "activity_log/version"

module ActivityLog

  def self.log(owner_id, data)
    log_entry = ActivityLogEntry.new
    log_entry.owner_id = owner_id unless owner_id.nil?
    log_entry.data = data unless data.nil?

    return log_entry.save
  end

  def self.get_by_owner(owner_id)
  	ActivityLogEntry.all(:conditions => {:uid => owner_id})
  end

  def self.get_by_owner_and_range(owner_id, start_date = nil, end_date = nil)
    start_date = Time.now - 50.years if start_date.nil?
    end_date = Time.now + 1.years if end_date.nil?
    ActivityLogEntry.all(:conditions => {:uid => owner_id, :created_at => start_date..end_date})
  end

  def self.get_by_id(id)
  	ActivityLogEntry.find_by_id(id)
  end
end
