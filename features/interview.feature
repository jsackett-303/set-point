Feature: Comverge coding interview
  In order to get a job with Comverge
  As an interviewee
  I want to be able to demonstrate that I can write awesome testable Rails code and use third-party APIs

  Background:
    Given a location at "11001 W. 120th Ave., Broomfield, CO 80021" with the following thermostats:
    | serial_number | set_point |
    | 230985        | 68        |
    | 923458        | 68        |
    And a location at "10101 W. 120th Ave., Broomfield, CO 80021" with the following thermostats:
    | serial_number | set_point |
    | 894572        | 70        |
    And a location at "100 16th St. Denver, CO" with the following thermostats:
    | serial_number | set_point |
    | 420928        | 72        |

  Scenario: Set the set points for a group of thermostats
    Given I am on the demand response page
    And I set all thermostats to 80 within 10 miles of Broomfield, CO
    Then the thermostats should be set as follows:
    | serial_number | set_point |
    | 230985        | 80        |
    | 923458        | 80        |
    | 894572        | 80        |
    | 420928        | 72        |
