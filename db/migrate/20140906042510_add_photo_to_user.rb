class AddPhotoToUser < ActiveRecord::Migration
  def change
    add_column :users, :userphoto, :string
  end
end
