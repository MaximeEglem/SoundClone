class Research < ActiveRecord::Base
	def users
	 @findUsers ||=find_users
	end

	def find_users
 	 User.find(:all, :conditions => conditions, :order => "name")
	 
	end
	
	def conditions
	 ["users.name LIKE ?", "%#{keywords}%"] unless keywords.blank?
	end
end
