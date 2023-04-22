@oranges
Feature: Visit Orangehrm and Test Webpage

  @orange1
  Scenario: Visit Orangehrm and check the page loaded content
    Given I visit the following "https://opensource-demo.orangehrmlive.com/" and page loaded
    Then I should see this content "Login"

  @orange2
  Scenario: Visit Orangehrm and check the page loaded content
    Given I visit the following "https://opensource-demo.orangehrmlive.com/" and page loaded
    Then I should see this content "Login"
    Then I click button "Login"
    Then I should see this content "Required"
    And I set a breakpoint