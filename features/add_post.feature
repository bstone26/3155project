Feature: Add a new forum post
  
  As a user
  So that I can easily contribute content to the forum
  I want to be able to add a new post
 
Scenario: As a user I want to be able to navigate from the homepage to the new post form
  Given I am on the homepage
  When I click on the "Posts" link
  Then I should be on the "Posts" page
  When I click on the "New post" link
  Then I should be on the "New Post" page
  And I should see the "Title" field
  And I should see the "Category" field
  And I should see the "Text" field
  
