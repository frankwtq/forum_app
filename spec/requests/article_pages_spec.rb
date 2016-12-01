require 'spec_helper'

describe "ArticlePages" do
	subject {page}
	let(:user) {FactoryGirl.create(:user)}
	before {sign_in user}

	describe "article creation" do
		before {visit root_path}
		describe "with invalid information" do

			it "should not create a micropost" do
				expect {click_button "Post"}.not_to change(Article, :count)
			end

			describe "error messages" do
				before {click_button "Post"}
				it {should have_content('error')}
			end
		end

		describe "with valid information" do
			before do
				fill_in 'article_title',with: "Lorem ipsum"
				fill_in 'article_content',with: "Lorem ipsum"
			end
			it "should create a article" do
				expect {click_button "Post"}.to change(Article, :count).by(1)
			end
		end
	end
end
