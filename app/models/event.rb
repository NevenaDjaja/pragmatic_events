class Event < ActiveRecord::Base
	# business logic
	def free?
		price.blank? || price.zero?
	end
end
