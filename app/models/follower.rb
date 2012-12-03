class Follower < ActiveRecord::Base

	attr_accessible :user_id, :server_id

	belongs_to :user
	belongs_to :server

  validates_presence_of :user_id, :server_id

  #scope :top_five, select("server_id, count(server_id) AS follower_count").joins(:followers).order("follower_count DESC").limit(5)

  # SELECT server_id, count(*) as cont FROM followers group by server_id order by cont Desc

  scope :top5, select("server_id, count(*) as cont").joins("server").order("cont DESC").limit(5)

end
