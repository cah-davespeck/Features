Feature: Create a new order

As a user of Assist
I want to be able to add orders
So that I ...

Background:
Given I am a user of Assist
And I am on the XXXXX page
And I have XXXXX

Scenario: Create an order
Given I have entered the PO information
When I submit the form
Then a new order is created

Scenario: Neglect to provide required information
Given I have entered the PO information without providing a PO number
When I submit the form
Then I see the error "PO Number is required to create an order"
