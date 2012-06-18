Feature: Calling the service
  Background:
    Given a valid feature with step definitions
    And I require the Redline formatter
    And I successfully run `cucumber -f Cucumber::Formatter::Redline`

  Scenario: Calls the service with a passing test result
    Then the service should be called with 
    """

    """

