require 'bcrypt'

class User < ActiveRecord::Base
	include BCrypt	
  has_many :follower_relationships, foreign_key: :follower_id, class_name: "Relationship"
  has_many :followers, through: :follower_relationships, source: :follower

  has_many :followee_relationships, foreign_key: :followee_id, class_name: "Relationship"
  has_many :followees, through: :followee_relationships, source: :followee


  has_many :scoobs


  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end
