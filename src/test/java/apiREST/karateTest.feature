Feature: Plan de pruebas

  Scenario: caso de prueba tipo GET
    Given url 'https://reqres.in/api/users/2'
    When header 'Content-Type' = 'Application/json'
    When method GET
    * configure connectTimeout = 120000
    * configure readTimeout = 120000
    And match response.data.first_name == 'Janet'
    Then status 200


  Scenario: caso de prueba tipo POST
    Given  url 'https://reqres.in/api/users'
    When request {"name": "morpheus","job": "leader"}
    And method POST
    Then status 201


  Scenario: caso de prueba tipo POST numero2
    Given  url 'https://reqres.in/api/users'
    When request
    """
    {
    "name": "Fran",
    "job": "QA"
    }
    """
    And method POST
    Then status 201

 Scenario: caso de prueba DELETE
   Given  url 'https://reqres.in/api/users/3'
   When method DELETE
   Then status 204










