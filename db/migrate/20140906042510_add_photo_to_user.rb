class AddPhotoToUser < ActiveRecord::Migration
  def change
    add_column :users, :userphoto, :string
    add_column :users, :bio, :string
    add_column :users, :website, :string
  end
end
