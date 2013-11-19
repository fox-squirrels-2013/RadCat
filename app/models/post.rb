class Post < ActiveRecord::Base
  attr_accessible :name, :price, :body, :email, :category_id
  belongs_to :category
end