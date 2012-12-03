class Server < ActiveRecord::Base

	attr_accessible :name, :category_id, :follower_id, :category_name, :launch_on

	belongs_to :category
  belongs_to :expansion
	has_many :comments
	has_many :followers
	has_many :users, :through => :followers

	validates_presence_of :category_id
	validates_uniqueness_of :name

  def category_name
    category.try(:name)
  end

  def category_name=(name)
    self.category = Category.find_or_create_by_name(name) if name.present?
  end

	def user_emails
		users.map &:email
	end

	def is_follower?(user)
		users.include? user
	end

end
