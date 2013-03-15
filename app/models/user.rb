class User < ActiveRecord::Base
  attr_accessible :email, :name

  has_many :statuses
  has_and_belongs_to_many(:users,
  	:join_table => "follow"
  	:foreign_key => "follower"
  	:association_foreign_key => "followee")

  validates :name, :presence => true
  validates :email, :presence => true,
                    :format => {
                             :with    => /^([^\s]+)((?:[-a-z0-9]\.)[a-z]{2,})$/i,
                             :message => "Improper E-Mail format!"
                              }

end
