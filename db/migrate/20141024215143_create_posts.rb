class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :user
      t.string :title
      t.string :content
      t.string :location

      t.timestamps
    end
  end
end