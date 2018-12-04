Feature: Delete a forum post
  
  As a user
  So that I can easily delete un wanted content from the forum
  I want to be able toe delete a post
  
Scenario: As a user I want to be able to delete my post
  Given I am on the homepage
  When I click on the "Posts" link
  Then I should be on the "Posts" page
  When I click on the "New post" link
  Then I should be on the "New Post" page
  When I click on the "Save Post" button
  Then I should be on the "Posts" page
  When I click on the "Posts" link
  Then I should be on the "Posts" page
  And I should see the "Show" link
  And I should see the "Edit" link
  And I should see the "Destroy" link