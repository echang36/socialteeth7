class Contribution < ActiveRecord::Base
  
  belongs_to :ad
  belongs_to :user
  
  attr_accessible :user, :ad, :amount
  

end
