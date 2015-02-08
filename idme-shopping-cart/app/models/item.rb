class Item < ActiveRecord::Base


	def infopage
	"http://www.colehaan.com/#{item_id}"
	end

	def itemimage
		"http://demandware.edgesuite.net/#{item_image}"
	
	end
end

