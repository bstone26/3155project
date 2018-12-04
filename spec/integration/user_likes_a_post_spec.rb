require 'rails_helper.rb'

feature"User likes a post" do
    scenario "User successfully creates a new post and likes it" do
        visit new_post_path
        fill_in "Title", with: "This is my post"
        fill_in "Text", with: "This is the best post ever"
        click_button "Create Post"
        click_button "Like"
        expect(page).to have_content("1 Likes")
    end
end