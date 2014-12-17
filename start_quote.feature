Feature: Start a quote

As a potential customer
I want to receive an insurance quote
So that I can make a smarter purchase decision

Background:
Given I have landed on progressive.com
And I have selected Auto

Scenario: Select Auto
Given I have provided a zip code
When I submit the form
Then tell me that I can bundle other products with Auto
When I select an additional product
Then show me the name and address page

Scenario: Select Auto and one other product
Given I have provided a zip code
And I have selected Renters
When I submit the form
Then show me the name and address page

Scenario: Invalid zip code
Given I have provided an invalid zip code
And I have selected a product
When I submit the form
Then I am asked "Enter the zip code where you live"

