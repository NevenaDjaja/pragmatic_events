module EventsHelper
	def format_price(event)
		if event.free?
			# "<strong>Free!</strong>".html_safe
			content_tag(:strong, "Free!")
		else
			number_to_currency(event.price) 
		end
	end

	def image_for(event) 
		if event.image_file_name.blank?
			image_tag 'placeholder.png', class: 'event-icon'
		else
			image_tag event.image_file_name, class: 'event-icon'
		end
	end
end
