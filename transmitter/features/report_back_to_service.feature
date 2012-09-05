Feature: Calling the service

  @bar
  Scenario: Calls the service with a passing test result
    Given a valid feature with step definitions
    And I require the Redline formatter
    And I run `cucumber -f Cucumber::Formatter::Redline`
    Then the service should be called with valid json
    And the json should contain only passing results

