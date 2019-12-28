@Logout 
Feature: A logged in user must be able to be forgotten.

  As a logged in user
  I want to logout
  In order to be forgotten

  Background:
    Given the following accounts
      | user  | password |
      | joe   | pass1    |

  Scenario: Logout successfully
    Given a logged in user "admin"
    When I logout
    Then the welcome page is shown.

  Scenario: Logout unsuccessfully
    Given a logged in user "admin"
    When I misclick the logout button
    Then the user remains logged in.
