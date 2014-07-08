class User < ActiveRecord::Base
  validates :email, presence: true
  has_many :galleries
  has_many :comments
  
end
