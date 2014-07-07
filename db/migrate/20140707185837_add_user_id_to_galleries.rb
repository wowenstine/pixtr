class AddUserIdToGalleries < ActiveRecord::Migration
  def change
    add_column :galleries, :user_id, :interger, index: true
  end
end
