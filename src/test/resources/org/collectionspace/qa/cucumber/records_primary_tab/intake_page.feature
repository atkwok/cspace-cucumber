#created by Alan Kwok at 11/6/2015
#needs to be completed

@intake
Feature: Intake Page Testing

  #Check
  Scenario: Error on no Intake Entry Number
    Given user is on the "Create New" page
    And selects the "Intake" radio button on the Create New page
    And clicks on the Create button
    And the user saves the record
    Then the error message bar should appear with "Please specify an Intake Entry Number"
    And user clicks on the "Select number pattern" button #Not a step def
    And user selects "Intake" from dropdown in "Type" row #Check
    Then "IN2015.136" should be in the "Intake Entry Number" field
    #I don't think 136 is constant, but I don't know how to test the increment by one.
    And user clicks on the "Select number pattern" button #Not a step def
    And user selects "Intake" from dropdown in "Type" row #Check
    Then "IN2015.137" should be in the "Intake Entry Number" field
    Then close the browser

  Scenario: Depositor and Identification number displayed on new
    Given user is on the "Create New" page
    And selects the "Intake" radio button on the Create New page
    And clicks on the Create button
    And user enters "test1234" in the "Intake Entry Number" field
    And user enters "John Doe" in the "Current Owner" field
    And user selects "John Doe" from dropdown in "John Doe" row #Check
    Then the titlebar should contain "test1234 - John Doe"
    Then close the browser

  #Incomplete
  Scenario: All fields saved on new intake record
    Given user is on the "Create New" page
    And selects the "Intake" radio button on the Create New page
    And clicks on the Create button
    And user fills in all the fields of the "Intake" record #Check
    #Incomplete
    And the user saves the record
    Then #A "New Record successfully created" message should appear along with the current time #Not a step def
    Then all fields in "Intake" record should be filled in
    Then #After the success message appear, The name authorities should be displayed under Integrated Vocabularies #Not a step def
    Then #After the success message appear, The newlines should still be present in text areas #Not a step def
    Then close the browser

  #Incomplete
  Scenario: All fields saved on edited intake record
    Given user is on the "Find and Edit" page
    And selects "Intake" from the top nav search record type select field
    And clicks on the top nav search submit button
    And the user clicks on result with text "041319951"
    And user fills in all the fields of the "Intake" record #Check
    #Incomplete
    And the user saves the record
    Then #A "Record successfully created" message should appear along with the current time #Not a step def
    Then all fields in "Intake" record should be filled in
    Then #After the success message appear, The name authorities should be displayed under Integrated Vocabularies #Not a step def
    Then #After the success message appear, The newlines should still be present in text areas #Not a step def
    Then close the browser

  #To Do
  Scenario: Integrated Vocabulary display and pivoting
    Given user is on the "Find and Edit" page
    And selects "Intake" from the top nav search record type select field

  #Incomplete
  Scenario: Removing values from all fields
    Given user is on the "Find and Edit" page
    And selects "Intake" from the top nav search record type select field
    And clicks on the top nav search submit button
    And the user clicks on result with text "intake2344567678678"
    And user clears all fields of the "Intake" record
    And user enters "intake2344567678678" in the "Intake Entry Number" field
    And the user saves the record
    Then #a success message from save should appear #Not a step def
    Then the titlebar should contain "****"
    Then all fields of the "intake2344567678678" record should be empty
    And user clears the "Intake Entry Number" field
    And the user saves the record
    Then the error message bar should appear with "Please specify an Intake Entry Number"
    Then close the browser

  #Incomplete
  Scenario: Deletion of Record
    Given user is on the "Create New" page
    And selects the "Intake" radio button on the Create New page
    And clicks on the Create button
    And user enters "delete123" in the "Intake Entry Number" field
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
    And selects "Intake" from the top nav search record type select field
    And user enters "delete123" in the top nav search field
    And clicks on the top nav search submit button
    Then the search results should not contain "delete123"
    Then close the browser

  #Incomplete
  Scenario: Deletion of Record with Relationships
    Given user is on the "Create New" page
    And selects the "Intake" radio button on the Create New page
    And clicks on the Create button
    And user enters "deleteloan1" in the "Intake Entry Number" field
    And the user saves the record
    And user selects the "Loan In" tab #NOT A STEP DEF
    And user clicks the "Add record" button #Not a step def
    And user clicks the "Create" button #Not a step def
    And user enters "loan123" in the "Loan In Number" field
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
    And selects "Intake" from the top nav search record type select field
    And user enters "deleteloan1" in the top nav search field
    And clicks on the top nav search submit button
    Then the search results should not contain "deleteloan1"
    Then close the browser

  #Does not match any existing step defs
  #To do
  Scenario: Fold/Unfolding boxes
    Given user is on the "Create New" page
    And selects the "Intake" radio button on the Create New page
    And clicks on the Create button
    And user clicks on the "Fold" symbol next to "Object Entry Information" #Not a step def
    Then the "Object Entry Information" section should fold
    Then the "Fold" symbol next to "Object Entry Information" should be a folded symbol
    And user clicks on the "Fold" symbol next to "Object Entry Information"
    Then the "Object Entry Information" section should unfold
    Then the "Fold" symbol next to "Object Entry Information" should be a unfolded symbol
    And user clicks on the "Fold" symbol next to "Object Collection Information"
    Then the "Object Collection Information" section should fold
    Then the "Fold" symbol next to "Object Collection Information" should be a folded symbol
    And user clicks on the "Fold" symbol next to "Object Collection Information"
    Then the "Object Collection Information" section should unfold
    Then the "Fold" symbol next to "Object Collection Information" should be a unfolded symbol
    And user clicks on the "Fold" symbol next to "Valuation"
    Then the "Valuation" section should fold
    Then the "Fold" symbol next to "Valuation" should be a folded symbol
    And user clicks on the "Fold" symbol next to "Valuation"
    Then the "Valuation" section should unfold
    Then the "Fold" symbol next to "Valuation" should be a unfolded symbol
    And user clicks on the "Fold" symbol next to "Insurance"
    Then the "Insurance" section should fold
    Then the "Fold" symbol next to "Insurance" should be a folded symbol
    And user clicks on the "Fold" symbol next to "Insurance"
    Then the "Insurance" section should unfold
    Then the "Fold" symbol next to "Insurance" should be a unfolded symbol
    And user clicks on the "Fold" symbol next to "Location"
    Then the "Location" section should fold
    Then the "Fold" symbol next to "Location" should be a folded symbol
    And user clicks on the "Fold" symbol next to "Location"
    Then the "Location" section should unfold
    Then the "Fold" symbol next to "Location" should be a unfolded symbol
    And user clicks on the "Fold" symbol next to "Condition"
    Then the "Condition" section should fold
    Then the "Fold" symbol next to "Condition" should be a folded symbol
    And user clicks on the "Fold" symbol next to "Condition"
    Then the "Condition" section should unfold
    Then the "Fold" symbol next to "Condition" should be a unfolded symbol
    Then close the browser

  ###Warnings###

  #Missing step defs
  Scenario: Cancel Changes buttons
    Given user is on the "Find and Edit" page
    And selects "Intake" from the top nav search record type select field
    And clicks on the top nav search submit button
    And the user clicks on result with text "041319951"
    And user clicks the "Cancel Changes" button on the top #Not a step def
    Then the "Cancel Changes" button on the top should not be clickable #Not a step def
    And user clicks the "Cancel Changes" button on the bottom #Not a step def
    Then the "Cancel Changes" button on the bottom should not be clickable #Not a step def
    And user enters "firstnote" in the "Entry Note" field
    And the user saves the record
    And user enters "testnote" in the "Entry Note" field
    And user clicks the "Cancel Changes" button on the top #Not a step def
    Then "firstnote" should be in the "Entry Note" field
    And user enters "testnote" in the "Entry Note" field
    And user clicks the "Cancel Changes" button on the bottom #Not a step def
    Then "firstnote" should be in the "Entry Note" field
    And the user saves the record
    And user clicks the "Cancel Changes" button on the top #Not a step def
    Then the "Cancel Changes" button on the top should not be clickable #Not a step def
    And user clicks the "Cancel Changes" button on the bottom #Not a step def
    Then the "Cancel Changes" button on the bottom should not be clickable #Not a step def
    Then close the browser

  #To do
  Scenario: Warning on attempting to leave edited page on new intake record
    Given user is on the "Create New" page
    And selects the "Intake" radio button on the Create New page
    And clicks on the Create button

  #To do
  Scenario: Warning on attempting to leave edited page on edited intake record
    Given user is on the "Find and Edit" page
    And selects "Intake" from the top nav search record type select field
    And clicks on the top nav search submit button
    And the user clicks on result with text "041319951"

  #Check
  Scenario: Warning on attempting to add related object/procedures to unsaved Intake
    Given user is on the "Create New" page
    And selects the "Intake" radio button on the Create New page
    And clicks on the Create button
    And user clicks on "Add" in Terms Used sidebar #Check
    Then the error message bar should appear with "Please save the record you are creating before trying to relate other records to it"
    And user clicks on "Add" in Terms Used sidebar #Check
    Then the error message bar should appear with "Please save the record you are creating before trying to relate other records to it"
    Then close the browser

  ###Keyboard Navigation###

  #Incomplete
  #Does not match any existing step defs
  Scenario: All fields available via the keyboard
    Given user is on the "Create New" page
    And selects the "Intake" radio button on the Create New page
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
    And selects the "Intake" radio button on the Create New page
    And clicks on the Create button
    And user presses "Tab" #until reaching the "Depositor" field
    And user enters "James" in the "Depositor" field #possibly incorrect
    Then #FINISH
    Then close the browser