class Tag < ActiveRecord::Base
  has_and_belongs_to_many :statuses
  attr_accessible :tag

  validates :tag, :presence => true
end
