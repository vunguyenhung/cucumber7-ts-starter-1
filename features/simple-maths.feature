@foo
Feature: Simple maths
  In order to do maths
  As a developer
  I want to increment variables

# use @noOpLogger to deactivate any internal logging
# use @simpleLogger to activate internal logging 
# if you need to create a custom logger : create & configure your logger in loggers/index.ts

Background: Calculator
  Given I have a simple maths calculator

@debug
Scenario: easy maths
  Given a variable is set to 11
  When I increment this variable by 1
  Then the variable should contain 12

@ignore
Scenario Outline: much more complex stuff
  Given a variable is set to <var>
  When I increment this variable by <increment>
  Then the variable should contain <result>
  Examples:
    | var | increment | result |
    | 100 | 5         | 105    |
    | 99  | 1234      | 1333   |
    | 12  | 5         | 17     |
    