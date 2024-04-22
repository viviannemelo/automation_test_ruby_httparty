# language: en

Feature: Search Employees
    In order to verify information
    As a system user
    I want to be able to consult employee information

    @search_employee
    Scenario: Search for employee information
        Given the user queries employee information
        When they perform a search
        Then a list of employees should be returned

    @register_employee
    Scenario: Register employee
        Given the user registers a new employee
        When they submit the employees information
        Then the employee will be registered

    @update_employee
    Scenario: Update employee
        Given the user update employee information
        When they send new informations
        Then informations will be changed

    @delete_employee
    Scenario: Delete employee
        Given the user delete a employee
        When they send identification
        Then employee will be deleted