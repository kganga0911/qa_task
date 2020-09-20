Feature : To delete the employee details from the  URL

  Scenario: To delete  employee record
    Given url 'http://dummy.restapiexample.com/api/v1/delete/5'
    When  method DELETE
    Then status 200