class Expansion < ActiveRecord::Base

  attr_accessible :name, :category_id

  belongs_to :category
  has_many :servers

  validates_presence_of :name, :minimum => 5, :maximum => 50
  validates_uniqueness_of :name
end
