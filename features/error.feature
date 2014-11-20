Feature: I would like to...

    Scenario: The Page was not found!
      Given I am on "some/page/that/doesnt/exist"
       Then the response status code should be 404
        And I should see "Johny says that we have an 404 error :-)"

    Scenario: Serious problem in the application
      Given I am on "/action/with/exception"
       Then the response status code should be 500
        And I should see "Johny shouts that we have an EXCEPTION...:-("


