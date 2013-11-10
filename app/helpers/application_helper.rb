module ApplicationHelper
	def full_title(page_title)
		base_title = "16 Circles | Technology Strategy, Advisory & Consulting Services"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end
end
