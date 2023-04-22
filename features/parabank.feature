Feature: Visit ParaBank and Test Webpage

  Scenario: Visit Parabank and check the page loaded content
    Given I visit the following "https://parabank.parasoft.com/parabank/index.htm" and page loaded
    Then I should see this content "Experience the difference"

  Scenario: Visit Parabank and check the page loaded content
    Given I visit the following "https://parabank.parasoft.com/parabank/index.htm" and page loaded
    Then I should see this content "Customer Login"

  Scenario: Visit Parabank and check the page loaded content
    Given I visit the following "https://parabank.parasoft.com/parabank/index.htm" and page loaded
    Then I should see this content "Customer Login"
    Then I click link "Read More"
    Then I click button "button"
    And I set a breakpoint