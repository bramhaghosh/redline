@wip
Feature: Use the transmitter formatter

  @announce
  Scenario: Using the formatter
    Given a valid feature with step definitions
    And I require the Redline::Transmitter formatter
    When I successfully run `cucumber -f Redline::Transmitter`
    Then I should not get any error messages
   
