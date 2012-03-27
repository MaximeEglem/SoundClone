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
  attr_accessor :password
  attr_accessible :name, :email, :password, :password_confirmation
  
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
  
   # Automatically create the virtual attribute 'password_confirmation'.
  validates :password, :presence     => true,
                       :confirmation => true,
                       :length       => { :within => 6..40 }

  before_save :encrypt_password

  def has_password?(submitted_password)
    encrypted_password == encrypt(submitted_password)
  end

  def self.authenticate(email, submitted_password)
    user = find_by_email(email)
    return nil  if user.nil?
    return user if user.has_password?(submitted_password)
  end

  private

	 def encrypt_password
      self.salt = make_salt if new_record?
      self.encrypted_password = encrypt(password)
    end

    def encrypt(string)
      secure_hash("#{salt}--#{string}")
    end

    def make_salt
      secure_hash("#{Time.now.utc}--#{password}")
    end

    def secure_hash(string)
      Digest::SHA2.hexdigest(string)
    end
end