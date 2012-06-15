Feature: Referencing the formatter
  Background:
    Given a valid feature with step definitions

  Scenario: Requiring the formatter
    And I require the Redline formatter
    Then I successfully run `cucumber -f Cucumber::Formatter::Redline`

  Scenario: Failing to require the formatter
    When I run `cucumber -f Cucumber::Formatter::Redline`
    Then the output should contain: 
    """
    no such file to load -- cucumber/formatter/redline
    """
   
