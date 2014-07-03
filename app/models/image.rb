class Image < ActiveRecord::Base
  belongs_to :gallery

  validates :name, presence: true
  validates :description, presence: true
  validates :url, presence: true
end
