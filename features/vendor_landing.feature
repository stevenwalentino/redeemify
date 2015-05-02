Feature: Vendor Landing Page (Story 1123)

        As a vendor
        So that I can see my Redeemify usage status
        I want to see my history and number of codes remaining and used

Background:
        
        Given a vendor "Github" and user ID "12345" registered with "facebook"
        
        And the following vendor codes exist:

        | code  | vendor | upload     | expiry_date | code_type |
        | 12345 | Github | 01-01-2015 | 01-01-2016  | free_repo |
        | 54321 | Github | 01-01-2015 | 01-01-2016  | free_repo |
        | 13579 | Github | 01-01-2015 | 01-01-2016  | free_repo |
        | 97531 | Github | 01-01-2015 | 01-01-2016  | free_repo |


Scenario: 
        
        Then I am on the user login page
        Then I am signed in as a vendor "Github" and user ID "12345" with "facebook"
        And I have updated the vendor profile
        Then the vendor "uploadedCodes" should be "4"
        Then the vendor "unclaimCodes" should be "4"
