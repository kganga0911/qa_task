Feature : To update the  employe details from the URL

  Background:
    * def putPayload = read('updateEmpPut.json')

  Scenario: To create new employe record
    Given url 'http://dummy.restapiexample.com/api/v1/update/2'
    And request putPayload
    When  method PUT
    Then status 200
    Then print response