class User < ActiveRecord::Base
  validates :email, presence: true
  has_many :galleries
end
