class Item < ActiveRecord::Base


	def infopage
	"http://www.colehaan.com/#{item_id}"
	end

	def itemimage
		"http://demandware.edgesuite.net/#{item_image}"
	
	end

	def cart_action(current_user_id)
		if $redis.sismember "cart#{current_user_id}", id
			"Remove from"
		else
			"Add to"
		end
	end
	
end

