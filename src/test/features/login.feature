@Authentication

#First comment
Feature: A user must login to verify that a person is who that person says he/she is

  As a user
  I want to login
  In order to get access to the correct information
  <ftr-image src="../Example-image.png" type="png">
  and to allow me to update some information

  Background:
    Given the following accounts
      | Mark  | pass1 |
      | Joe   | pass2 |

  Scenario Outline: Login successfully
    Given a user "<user>" and password "<password>"
    When I login
    Then access is <accessability>

    Examples:
      | user  | password | accessability  |
      | joe   | pass2    | allowed        |
      | joe   | bogus    | not allowed    |
