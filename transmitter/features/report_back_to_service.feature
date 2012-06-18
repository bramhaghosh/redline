Feature: Calling the service

  @foo
  Scenario: Calls the service with a passing test result
    Given a valid feature with step definitions
    And I require the Redline formatter
    And I run `cucumber -f Cucumber::Formatter::Redline`
    Then the service should be called with 
    """
      passed
    """

