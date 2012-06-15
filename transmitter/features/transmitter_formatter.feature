@wip
Feature: Use the transmitter formatter

  Scenario: Using the formatter
    Given a valid feature with step definitions
    When I sucessfully run `cucumber -f Redline::Transmitter'
    Then I should not get any error messages
   
