Feature: to perform CRUD operation on the API

  Background:
    * def pPayload = read('newRecord.json')
    * def puPayload = read('updateEmpPut.json')
    * def finalOutput = read('responseDetails.json')

  Scenario: To fetch all employee details
    Given url 'http://dummy.restapiexample.com/api/v1/employees'
    And  request finaloutput
    When method GET
    Then status 200
    Then print response

  Scenario: To create new employe record
    Given url 'http://dummy.restapiexample.com/api/v1/update/2'
    And request pPayload
    When  method POST
    Then status 200
    Then print response

  Scenario: To create new employe record
    Given url 'http://dummy.restapiexample.com/api/v1/delete/5'
    When  method DELETE
    Then status 200
    Then print response
