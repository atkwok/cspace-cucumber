#created by Alan Kwok at 11/6/2015
#needs to be completed

@recordsprimarytab
Feature: Intake Page Testing

  #Check
  Scenario: Error on no Intake Entry Number
    Given user is on the "Create New" page
    And selects the "Intake" radio button on the Create New page
    And clicks on the Create button
    When the user saves the record
    Then the error message bar should appear with "Please specify an Intake Entry Number"
    Then close the browser

