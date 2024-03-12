Feature: Sample API Test Suite

  Background:
    * configure ssl = true

  @smoke
  Scenario: Get Random Cats - Facts
    Given url catsUrl
    When method get
    Then status 200
    * print response
   * match response ==
    """
    {
    "fact": "#string",
    "length": "#number"
    }
    """

  @smoke @regression
  Scenario: Get Random Cats - Facts
    Given url dogsUrl
    When method get
    Then status 200
    * print response
    * match response ==
    """
    {
      "message": "#string",
      "status": "#string"
    }
    """