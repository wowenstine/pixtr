class User < ActiveRecord::Base
  validates :email, presence: true
  belongs_to :galleries
end
