Feature: Web pages

  Scenario: Homepage
    Given I am on homepage
    Then the response status code should be 200
    Then I should see "Your application is ready to start working on it at:"
