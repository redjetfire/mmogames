class Comment < ActiveRecord::Base

	attr_accessible :comment, :user_id, :server_id

	belongs_to :user
	belongs_to :server

  validates_presence_of :user_id, :server_id
	
	def is_commenter?(user)
		  self.user == user	
	end
end
