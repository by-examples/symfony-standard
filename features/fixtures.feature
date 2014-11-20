Feature: We want one page with all the rivers...

  Scenario: List rivers
    Given I am on homepage
     Then I should see "The Nile"
      And I should see "1234"
      And I should see "Mississipi"
      And I should see "9999"

  Scenario: I want to check the number of records
    When I am on homepage
    Then I should see 5 ".records tbody tr" elements

