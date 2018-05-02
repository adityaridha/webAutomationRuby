Feature: Site Search
    User with valid credential should be able to login

# Scenario: Login with valid email and password
#     Given I navigate to the hub homepage
#     When I fill email with "bellacamilla@mailinator.com" and password with "ZXasqw12"
#     Then Login success

Scenario: Login with valid email and password
    Given I navigate to the hub homepage
    When I fill email with "bellacamilla@gmail.com" and password with "ZXasqw12"
    Then Login Failed
    
