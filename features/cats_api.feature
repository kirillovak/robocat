Feature: Cats Endpoint Testing

  Scenario: Look at cats
    And GET url "/v1/images/search?limit=10"
    Then I visit each cat's url and state at it for "10" seconds
