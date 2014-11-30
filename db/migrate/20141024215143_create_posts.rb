class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :user
      t.string :title
      t.string :content
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
