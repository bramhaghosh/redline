
Feature: Formatter calls the service
  Background:
    Given a file named "features/dummy.feature" with:
    """
      Feature: I'll use my own because I'm worth it
        Scenario: just print me
          Given this step works
    """
    And a file named "features/step_definitions/steps.rb" with:
    """
      Given /^this step works$/ do
      end
    """
    And a file named "features/support/step_list_formatter.rb" with:
    """
    require '../../lib/transmitter'
    """

    @announce
  Scenario: The formatter gets loaded
    Given I successfully run `cucumber -f Redline::Transmitter`
    Then it should not fail
