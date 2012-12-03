class Category < ActiveRecord::Base
	attr_accessible :name, :offsite, :released, :races, :classes, :description, :expansion_list

  attr_accessor :expansion_list
  after_save :assign_expansions
  
  has_many :servers
  has_many :expansions

	validates_uniqueness_of :name
  validates_presence_of :name
  validates_length_of :name , :within => 3..15

  private

  def assign_expansions
    if expansion_list.present?
      self.expansions = expansion_list.split(',').map do |name|
        Expansion.find_or_create_by_name(name)
      end
    end
  end

end
