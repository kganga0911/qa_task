Feature : To create the new employee details from the  URL

  Background:
    * def postPayload = read('newRecord.json')

    Scenario: To create new employee record
      Given url 'http://dummy.restapiexample.com/api/v1/create'
      And request postPayload
      When  method POST
      Then status 200
      Then print response