class Gallery < ActiveRecord::Base
  has_many :images

  validates :name, presence: true
  validates :description, presence: true
end
