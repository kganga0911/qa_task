Feature : To get the user details from the  URL

  Background:
  *def expectedOutput = read('responseDetails.json')

  Scenario: To verify the details of emp ID 4
    Given url 'http://dummy.restapiexample.com/api/v1/employee/4'
    When method GET
    Then status 200
    Then print response
    And match response == expectedOutput[3]

  Scenario: To verify the details of emp ID 6
    Given url 'http://dummy.restapiexample.com/api/v1/employee/6'
    When method GET
    Then status 200
    Then print response
    And match response == expectedOutput[5]

  Scenario: To verify the details of emp ID 0
    Given url 'http://dummy.restapiexample.com/api/v1/employee/6'
    When method GET
    Then status 401



