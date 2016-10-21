require 'rails_helper'

RSpec.describe "posts/show.html.erb", type: :view do 
	it "renders 'No Content' when @post has no content" do
		@post = Post.create(:title => "Big title", :content => nil)
		render
		expect(rendered).to include("No Content")
	end

	it "renders content when @post has no content" do
		allow(view).to receive(:render_content).and_return("Stub Content")
		@post = Post.create(:title => "Big title", :content => "I love rails")
		render
		expect(rendered).not_to include("No Content")
		expect(rendered).not_to include("I love rails")
	end
end
