class Post < ApplicationRecord
	belongs_to :model
	has_many :comments,dependent: :destroy
	has_many :likes,dependent: :destroy

	def model_can_like(model_id)
		if self.likes.where(model_id: model_id).length > 0
			return false
		end
		    return true	
		
	end

	def like_status_string(model_id)
		if self.model_can_like(model_id)
			return 'Like'
		else
		  return 'Unlike'
		  end	
	end

end
