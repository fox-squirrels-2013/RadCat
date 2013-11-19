class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.string :price
      t.text :body
      t.string :email

      t.timestamps
    end
  end
end
