@test
Feature: test

  Scenario: 1
    Given visit "http://google.by"
    When do search
    When puts and verify page name