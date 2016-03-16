class Event < ActiveRecord::Base
	# business logic
	def free?
		price.blank? || price.zero?
	end

  # returns only future events, ignore the past ones
	def self.upcoming
		where("starts_at >= ?", Time.now).order("starts_at")
	end
end
