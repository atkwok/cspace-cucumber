#created by Alan Kwok at 11/13/2015
#needs to be completed

@loanin
Feature: Loan In Page Testing

  #Check
  Scenario: Loan In Number
  	Given user is on the "Create New" page
    And selects the "Loan In" radio button on the Create New page
    And clicks on the Create button
    And user clicks on the Save button
    Then the error message bar should appear with "Please specify an Loan In Number"
    When user clicks on the "Select number pattern" button
    And user selects "Loan In" from dropdown in "Type" row
    Then "LI2015.1.60" should be in the "Loan In Number" field
    #I don't know how to test the increment by one, might be wrong.
    When user selects "Loan In" from dropdown in "Type" row
    Then "LI2015.1.61" should be in the "Loan In Number" field
    And close the browser
  
  #Check
  Scenario: Lender and Loan In number displayed on new
    Given user is on the "Create New" page
    And selects the "Loan In" radio button on the Create New page
    And clicks on the Create button
    And user enters "test1234" in the "Loan In Number" field
    And user enters "John Doe" in the "Lender" field
    And user selects "John Doe" from dropdown in "John Doe" row
    Then the titlebar should contain "test1234 - John Doe"
    #This part is harder to test
    When user clicks "+" button next to the "Lender" field
    And user enters "Albert Smith" in the new "Lender" field
    And user selects "Albert Smith" from dropdown in "Albert Smith" row
    And user selects the radio button next to "Albert Smith"
    And user clicks on the Save button
    Then the titlebar should contain "test1234 - Albert Smith"
    And close the browser
  
  #Incomplete
  Scenario: All fields saved on new Loan In record
  	Given user is on the "Create New" page
    And selects the "Loan In" radio button on the Create New page
    And clicks on the Create button
    And #all fields should be filled in
    And user clicks on the bottom Save button
    Then #A "New Record successfully created" message should appear along with the current time
    And #After the success message appear, All the fields should contain the same value as you entered/selected
    And #After the success message appear, The name authorities should be displayed under Integrated Vocabularies
    And #After the success message appear, The newlines should still be present in text areas
    And close the browser

  #Incomplete
  Scenario: All fields saved on edited Loan In record
    Given user is on the "Find and Edit" page
    And selects "Loan In" from the top nav search record type select field
    And clicks on the top nav search submit button
    And #selects one of the intakes
    And #all fields should be filled in
    And user clicks on the bottom Save button
    Then #A "New Record successfully created" message should appear along with the current time
    And #After the success message appear, All the fields should contain the same value as you entered/selected
    And #After the success message appear, The name authorities should be displayed under Integrated Vocabularies
    And #After the success message appear, The newlines should still be present in text areas
    And close the browser

  #To Do
  Scenario: Integrated Vocabulary display and pivoting

  #Incomplete
  Scenario: Removing values from all fields
    Given user is on the "Find and Edit" page
    And selects "Loan In" from the top nav search record type select field
    And clicks on the top nav search submit button
    And selects Loan In **** #fix
    And user clears all fields of the "****" record
    And user enters "****" in the "Loan In Number" field
    And user clicks on the Save button
    Then #a success message from save should appear
    And the titlebar should contain "****"
    And all fields of the "****" record should be empty
    When user clears the "Intake Entry Number" field
    And user clicks on the Save button
    Then the error message bar should appear with "Please specify an Intake Entry Number"
    And the record should not be saved #NOT be saved
    And close the browser

  Scenario: Deletion of Loan In Record

  Scenario: Deletion of Loan In Record with Relationships

  Scenario: Folding and Unfolding boxes

#Warnings

  Scenario: Cancel Changes buttons

  Scenario: Warning on attempting to leave edited page

  Scenario: Warning on attempting to add related object or procedures to unsaved Loan In

#Keyboard Navigation

  Scenario: All fields available via the keyboard
  	Given user is on the "Create New" page
    And selects the "Loan In" radio button on the Create New page
    And clicks on the Create button
    And user presses "Tab"
    Then #the first field should be accessable
    When #user repeats pressing "Tab" on all repeatable fields
    Then #all fields should be accessable
    And close the browser

  Scenario: Vocabulary Fields usable via keyboard only
  	Given user is on the "Create New" page
    And selects the "Loan In" radio button on the Create New page
    And clicks on the Create button
    And user presses "Tab" #until reaching the "Depositor" field
    And user enters "James" in the "Depositor" field #possibly incorrect
    Then #FINISH
    And close the browser
