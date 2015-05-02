Feature: User View Offer (Story 3)

    As a user
    So that I can redeem my offers
    I want to see my code, instructions and expiration date of my offers

Background:

    Given a vendor "Github" and user ID "1" registered with "facebook"
    Given the following provider codes exist:
    | code  | vendor   | created_at | updated_at | vendor_id | user_id |
    | 12345 | Amazon   | 01-01-2015 | 01-01-2016 | 1         |    nil  |

    Given the following vendor codes exist:
    | code  | vendor   | created_at | updated_at | vendor_id | user_id |
    | 12345 | Github   | 01-01-2015 | 01-01-2016 | 1         |    nil  |
    | 64321 | Github   | 01-01-2015 | 01-01-2016 | 1         |    nil  |
    | 13579 | Github   | 01-01-2015 | 01-01-2016 | 1         |    nil  | 
    | 97531 | Github   | 01-01-2015 | 01-01-2016 | 1         |    nil  |

Scenario:
    
    Given I am on the user login page
    And I have already registered with "facebook" and provider code "12345"
    Given I am signed in with "facebook"
    Then I can see "Github"
    And I can see "12345"