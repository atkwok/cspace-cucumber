#created by Alan Kwok at 11/13/2015
#needs to be completed

@recordsprimarytab
Feature: Loan In Page Testing

  #Check
  Scenario: Loan In Number
    Given user is on the "Create New" page
    And selects the "Loan In" radio button on the Create New page
    And clicks on the Create button
    And the user saves the record
    Then the error message bar should appear with "Please specify an Loan In Number"
    And user clicks on the "Select number pattern" button #Not a step def
    And user selects "Loan In" from dropdown in "Type" row #Check
    Then "LI2015.62" should be in the "Loan In Number" field
    #I don't know how to test the increment by one, wrong.
    And user clicks on the "Select number pattern" button #Not a step def
    And user selects "Loan In" from dropdown in "Type" row
    Then "LI2015.1.62" should be in the "Loan In Number" field
    Then close the browser

  #Check
  Scenario: Lender and Loan In number displayed on new
    Given user is on the "Create New" page
    And selects the "Loan In" radio button on the Create New page
    And clicks on the Create button
    And user enters "test1234" in the "Loan In Number" field
    And user enters "John Doe" in the "Lender" vocab field
    And the user clicks on result with text "John Doe" #Check
    Then the titlebar should contain "test1234 - John Doe"
    And user clicks the plus to repeat the "Lender" form
    And user adds "Lender" in the "Lender" field of the second "Lender" form #Check
    And user selects the additional "Lender" as primary
    And user saves the record
    Then the titlebar should contain "test1234 - Albert Smith"
    Then close the browser
  
  #Incomplete
  Scenario: All fields saved on new Loan In record
  	Given user is on the "Create New" page
    And selects the "Loan In" radio button on the Create New page
    And clicks on the Create button
    And user fills in all the fields of the "Loan In" record #Check
    #Incomplete
    And the user saves the record
    Then #A "New Record successfully created" message should appear along with the current time #Not a step def
    Then all fields in "Loan In" record should be filled in
    Then #After the success message appear, The name authorities should be displayed under Integrated Vocabularies #Not a step def
    Then #After the success message appear, The newlines should still be present in text areas #Not a step def
    Then close the browser

  #Incomplete
  Scenario: All fields saved on edited Loan In record
    Given user is on the "Find and Edit" page
    And selects "Loan In" from the top nav search record type select field
    And clicks on the top nav search submit button
    And the user clicks on result with text "EX25.2"
    And user fills in all the fields of the "Loan In" record #Check
    #Incomplete
    And the user saves the record
    Then #A "Record successfully created" message should appear along with the current time #Not a step def
    Then all fields in "Loan In" record should be filled in
    Then #After the success message appear, The name authorities should be displayed under Integrated Vocabularies #Not a step def
    Then #After the success message appear, The newlines should still be present in text areas #Not a step def
    Then close the browser

  #To Do
  Scenario: Integrated Vocabulary display and pivoting

  #Incomplete
  Scenario: Removing values from all fields
    Given user is on the "Find and Edit" page
    And selects "Loan In" from the top nav search record type select field
    And clicks on the top nav search submit button
    And the user clicks on result with text "3"
    And user clears all fields of the "Loan In" record
    And user enters "3" in the "Loan In Number" field
    And the user saves the record
    Then #a success message from save should appear #Not a step def
    Then the titlebar should contain "3"
    Then all fields of the "Loan In" record should be empty
    And user clears the "Loan In Number" field
    And the user saves the record
    Then the error message bar should appear with "Please specify an Loan In Number"
    Then close the browser

  #Incomplete
  Scenario: Deletion of Loan In Record
  	Given user is on the "Create New" page
    And selects the "Loan In" radio button on the Create New page
    And clicks on the Create button
    And user enters "loandeletiontest123" in the "Loan In Number" field
    And user clicks on the delete button
    Then the delete button should not be clickable
    And the user saves the record
    Then the record is successfully saved
    And user clicks on the delete button
    Then delete confirmation dialogue should appear
    And user clicks cancel button
    Then the delete confirmation dialogue should disappear
    And user clicks on the delete button
    Then delete confirmation dialogue should appear
    And user clicks close button
    Then the delete confirmation dialogue should disappear
    And user clicks on the delete button
    Then delete confirmation dialogue should appear
    And user clicks the confirmation delete button
    Then deletion should be confirmed in a dialogue
    And selects "Loan In" from the top nav search record type select field
    And user enters "loandeletiontest123" in the top nav search field
    And clicks on the top nav search submit button
    Then the search results should not contain "loandeletiontest123"
    Then close the browser

  #Incomplete
  Scenario: Deletion of Loan In Record with Relationships
    Given user is on the "Create New" page
    And selects the "Loan In" radio button on the Create New page
    And clicks on the Create button
    And user enters "loandeletion2test" in the "Loan In Number" field
    And the user saves the record
    And user selects the "Loan Out" tab #NOT A STEP DEF
    And user clicks the "Add record" button #Not a step def
    And user clicks the "Create" button #Not a step def
    And user enters "loanout123" in the "Loan Out Number" field
    And the user saves the record
    And user selects the "Current Record" tab
    And user clicks on the delete button
    Then deletion should be confirmed in a dialogue
    Then the deletion dialogue should contain "and its relationships" #Not a step def
    And user clicks cancel button
    Then the delete confirmation dialogue should disappear
    And user clicks on the delete button
    Then delete confirmation dialogue should appear
    Then the deletion dialogue should contain "and its relationships" #Not a step def
    And user clicks close button
    Then the delete confirmation dialogue should disappear
    And user clicks on the delete button
    Then delete confirmation dialogue should appear
    Then the deletion dialogue should contain "and its relationships" #Not a step def
    And user clicks the confirmation delete button
    Then deletion should be confirmed in a dialogue
    And selects "Loan In" from the top nav search record type select field
    And user enters "loandeletion2test" in the top nav search field
    And clicks on the top nav search submit button
    Then the search results should not contain "loandeletion2test"
    Then close the browser

  #Does not match any existing step defs
  #To do
  Scenario: Folding and Unfolding boxes
    Given user is on the "Create New" page
    And selects the "Loan In" radio button on the Create New page
    And clicks on the Create button
    And user clicks on the "Fold" symbol next to "Loans In Information" #Not a step def
    Then the "Loans In Information" section should fold #Not a step def
    Then the "Fold" symbol next to "Loans In Information" should be a folded symbol #Not a step def
    And user clicks on the "Fold" symbol next to "Loans In Information" #Not a step def
    Then the "Loans In Information" section should unfold #Not a step def
    Then the "Fold" symbol next to "Loans In Information" should be a unfolded symbol #Not a step defs
    Then close the browser

#Warnings

  #Incomplete
  Scenario: Cancel Changes buttons
    Given user is on the "Find and Edit" page
    And selects "Loan In" from the top nav search record type select field
    And clicks on the top nav search submit button
    And the user clicks on result with text "3"
    And user clicks the "Cancel Changes" button on the top #Not a step def
    Then the "Cancel Changes" button on the top should not be clickable #Not a step def
    And user clicks the "Cancel Changes" button on the bottom #Not a step def
    Then the "Cancel Changes" button on the bottom should not be clickable #Not a step def
    And user enters "firstnote" in the "Loan In Note" field
    And the user saves the record
    And user enters "testnote" in the "Loan In Note" field
    And user clicks the "Cancel Changes" button on the top #Not a step def
    Then "firstnote" should be in the "Loan In Note" field
    And user enters "testnote" in the "Loan In Note" field
    And user clicks the "Cancel Changes" button on the bottom #Not a step def
    Then "firstnote" should be in the "Loan In Note" field
    And the user saves the record
    And user clicks the "Cancel Changes" button on the top #Not a step def
    Then the "Cancel Changes" button on the top should not be clickable #Not a step def
    And user clicks the "Cancel Changes" button on the bottom #Not a step def
    Then the "Cancel Changes" button on the bottom should not be clickable #Not a step def
    Then close the browser

  #Incomplete
  #To do
  Scenario: Warning on attempting to leave edited page on new loan in record
    Given user is on the "Create New" page
    And selects the "Loan In" radio button on the Create New page
    And clicks on the Create button
    And user enters "test5678" in the "Loan In Number" field
    #Finish

  #Incomplete
  #To do
  Scenario: Warning on attempting to leave edited page on edited loan in record
    Given user is on the "Find and Edit" page
    And selects "Loan In" from the top nav search record type select field
    And clicks on the top nav search submit button
    And the user clicks on result with text "3"
    #Finish

  #Check
  Scenario: Warning on attempting to add related object or procedures to unsaved Loan In
    Given user is on the "Create New" page
    And selects the "Loan In" radio button on the Create New page
    And clicks on the Create button
    And user clicks on "Add" in Terms Used sidebar #Check
    Then the error message bar should appear with "Please save the record you are creating before trying to relate other records to it"
    And user clicks on "Add" in Terms Used sidebar #Check
    Then the error message bar should appear with "Please save the record you are creating before trying to relate other records to it"
    Then close the browser

#Keyboard Navigation

  #Incomplete
  #Does not match any existing step defs
  Scenario: All fields available via the keyboard
    Given user is on the "Create New" page
    And selects the "Loan In" radio button on the Create New page
    And clicks on the Create button
    And user presses "Tab"
    Then #the first field should be accessable
    And #user repeats pressing "Tab" on all repeatable fields
    Then #all fields should be accessable
    Then close the browser

  #Incomplete
  #Does not match any existing step defs
  Scenario: Vocabulary Fields usable via keyboard only
    Given user is on the "Create New" page
    And selects the "Loan In" radio button on the Create New page
    And clicks on the Create button
    And user presses "Tab" #until reaching the "Lender" field
    And user enters "James" in the "Lender" field #possibly incorrect
    Then #FINISH
    Then close the browser

