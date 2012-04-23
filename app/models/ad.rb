class Ad < ActiveRecord::Base

  belongs_to :user
  has_many :contributions
  
  attr_accessible :title, :user, :description
  
end
