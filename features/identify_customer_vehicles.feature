Feature:  Identify the customer's vehicles based on their personal data

As a potential customer
I want to provide information about myself
So that my vehicles can be identified and eliminate the need for my data entry

There is a 3rd party service that will be used to look up vehicle records based on name, address and dob

Scenario: Identify customer vehicles
Given I have started an Auto-only quote
And I am on the name and address page
And I have provided my name
And I have provided my address
And I have provided my DOB
When I submit the form
And the vehicles were identified
Then show me the add vehicle page
And show me my added vehicles

Scenario: Missing the data required to locate vehicles
Given I have started an Auto-only quote
And I am on the name and address page
And I have not provided my <personal_data>
When I submit the form
Then I will be asked "Please provide " "<personal_data>"

Examples:
| personal_data |
| name |
| address |
| date of birth |

Scenario: Unable to identify customer vehicles
Given I have started an Auto-only quote
And I am on the name and address page
And I have provided my name
And I have provided my address
And I have provided my DOB
When I submit the form
And the vehicles are not identified
Then show me the add vehicle page with no vehicles added


