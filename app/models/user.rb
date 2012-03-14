# == Schema Information
#
# Table name: users
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class User < ActiveRecord::Base 
  attr_accessible :name, :email

#	/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i	full regex
#	/	start of regex
#	\A	match start of a string
#	[\w+\-.]+	at least one word character, plus, hyphen, or dot
#	@	literal “at sign”
#	[a-z\d\-.]+	at least one letter, digit, hyphen, or dot
#	\.	literal dot
#	[a-z]+	at least one letter
#	\z	match end of a string
#  /	end of regex
#	i	case insensitive

  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name,  presence: true, length: { maximum: 50 }
  
end