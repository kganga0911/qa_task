Feature : To get the user details from the  URL

  Background:
  *def output = read('responseDetails.json')

  Scenario: To fetch all employee details
    Given url 'http://dummy.restapiexample.com/api/v1/employees'
    When method GET
    Then status 200
    Then print response
    And match response == Output