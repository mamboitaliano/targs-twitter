class User < ActiveRecord::Base

  has_many :follower_relationships, foreign_key: :follower_id, class_name: "Relationship"
  has_many :followers, through: :follower_relationships, source: :follower

  has_many :followee_relationships, foreign_key: :followee_id, class_name: "Relationship"
  has_many :followees, through: :followee_relationships, source: :followee


  has_many :scoobs

end