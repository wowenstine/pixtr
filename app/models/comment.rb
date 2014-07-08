class Comment < ActiveRecord::Base
  belongs_to :image
  belongs_to :user

  scope :reverse_chronological, -> { order(created_at: :desc) }
  default_scope -> { order(created_at: :asc) }

end
