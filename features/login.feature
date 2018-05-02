Feature: Site Search
    User with valid credential should be able to login

Scenario: Login with valid email and password
    Given I navigate to the hub homepage
    When I fill email with "bellacamilla@mailinator.com" and password with "ZXasqw12"
    Then Login success

Scenario: Login with invalid email and password
    Given I navigate to the hub homepage
    When I fill email with "bellacamilla@gmail.com" and password with "ZXasqw12"
    Then Login Failed

Scenario: Login with invalid email and password 3times
    Given I navigate to the hub homepage
    When I fill email with "bellacamill" and password with "ZXasqw12"
    Then Login Failed

    
