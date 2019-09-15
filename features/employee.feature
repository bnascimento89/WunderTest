# language: en
# encoding: utf-8

Feature: Employee 
  @create
  Scenario: Creating an employee
    Given I want to create an employee
    And send the employee information to create endpoint
    Then the employee should be create

  Scenario: Validate the employee is created
    Given I create an employee
    And send the employee id to employee endpoint
    Then I should see the created employee

  Scenario: Delete the employee
    Given I create an employee
    And send the employee id to delete endpoint
    Then the employee should be deleted
      