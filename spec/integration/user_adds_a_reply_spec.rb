require 'rails_helper.rb'

feature"User adds a reply" do
    scenario "User successfully creates a new post and adds a reply" do
        visit new_post_path
        fill_in "Title", with: "This is my post"
        fill_in "Text", with: "This is the best post ever"
        click_button "Create Post"
        fill_in "Commenter", with: "Capybara"
        fill_in "Body", with: "Gee, that was a great post"
        click_button "Create Reply"
        expect(page).to have_content("Capybara")
        expect(page).to have_content("Gee, that was a great post")

    end
end