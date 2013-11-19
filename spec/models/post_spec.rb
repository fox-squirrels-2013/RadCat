require 'spec_helper'

describe Post do 

	it { should belong_to :category }

	let(:post) { Post.new(name: 'Ty', price: '$1.00', body: 'cool dude', email: 'ty@ty.co') }

	context "#initialize" do
		it "create a Post object" do
			post.should be_an_instance_of Post
		end

		it "should not have a key until saved" do
			post.key.should be_nil
		end

		it "creates a key once the post is saved successfully" do
			post.save
			post.key.should_not be_empty
		end
	end

	context "associations" do
		it "should have a category method" do
			post.category.should be_nil
		end
	end

end