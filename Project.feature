Feature: Checking the response of the API Request

  Scenario: Bad Request

    Given I Set the GET API request endpoints
    When I Send query parameters to the endpoint
    Then I should see the response from server
    And I should see the status code also

  Scenario: Getting a Server response
    Given I Set the GET API request endpoints
    When I Send query parameters to the endpoint
    And I Set the request headers
    Then I should see the response body
    And I should see the response code and message