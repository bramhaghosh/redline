Feature: Formatter calls the service

  Scenario: The formatter calls the Service
    Given I have the formatter
    When it runs
    Then it calls the service
