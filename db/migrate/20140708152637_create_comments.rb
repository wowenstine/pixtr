class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.text :content
    	t.belongs_to :user
    	t.belongs_to :image, index: true
    	t.timestamps
    end
  end
end
