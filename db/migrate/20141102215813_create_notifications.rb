class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.references :post, index: true
      t.references :comment, index: true
      t.references :user, index: true
      t.boolean :read

      t.timestamps
    end
  end
end
