Feature: Use the transmitter formatter
  Background:
    Given a valid feature with step definitions

  Scenario: Requiring the formatter
    And I require the Redline::Transmitter formatter
    When I successfully run `cucumber -f Redline::Transmitter`
    Then I should not get any error messages

  Scenario: Failing to require the formatter
    When I run `cucumber -f Redline::Transmitter`
    Then the output should contain: 
    """
    no such file to load -- redline/transmitter
    """
   
