Feature: Referencing the formatter
  Background:
    Given a valid feature with step definitions

  Scenario: Requiring the formatter
    And I require the Redline::Transmitter formatter
    Then I successfully run `cucumber -f Redline::Transmitter`

  Scenario: Failing to require the formatter
    When I run `cucumber -f Redline::Transmitter`
    Then the output should contain: 
    """
    no such file to load -- redline/transmitter
    """
   
