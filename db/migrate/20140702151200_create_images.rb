class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :name
      t.text :description
      t.string :url
      t.belongs_to :gallery, index: true

      t.timestamps
    end
  end
end
