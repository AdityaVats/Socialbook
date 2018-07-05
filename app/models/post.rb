class Post < ApplicationRecord

	belongs_to :user
	has_many :comments , dependent: :destroy
	has_many :likes , dependent: :destroy

		def user_can_like(user_id)
			if self.likes.where(user_id: user_id).length > 0
				return false
			end
			return true
		
		end

		def like_status_string
			
		end

end
