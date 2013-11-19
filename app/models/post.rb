class Post < ActiveRecord::Base
  attr_accessible :name, :price, :body, :email, :category_id
  belongs_to :category

  before_create :generate_key

  def generate_key
  	random_key = ((0..9).to_a.sample(3) + ('A'..'Z').to_a.sample(7)).shuffle.join
  	self.key = random_key
  end

end