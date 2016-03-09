# Created by Jennifer Lynn Be on 01/05/2016
# needs to be tested

@supplementaryprimary
Feature: Supplementary Manual QA - Loan In

  Scenario: New Record Behavior
    Given user is on the "Create New" page
      And selects the "Loan In" radio button on the Create New page
      And clicks on the Create button
    Then the "cancel" button should not be clickable
    Then the "delete" button should not be clickable
    When user clicks the "add" button on the "Cataloging" area to the right
    Then the message "Please save the record you are creating before trying to relate other records to it." should be displayed
    When user clicks the "add" button on the "Procedures" area to the right
    Then the message "Please save the record you are creating before trying to relate other records to it." should be displayed
    Then close the browser

  Scenario: Number Chooser
    Given user is on the "Create New" page
      And selects the "Loan In" radio button on the Create New page
      And clicks on the Create button
      And user clicks Select number pattern
      And user selects "Loan In" from dropdown in "Loan In Number" row
    Then enables top and bottom "cancel" buttons
      And user clicks Select number pattern
      And user selects "Loan In" from dropdown in "Loan In Number" row
    # cannot detect incrementing numbers (next line)
    Then the number pattern incremented by one should be in the "Loan In" "Loan In Number" field
    Then enables top and bottom "cancel" buttons
    Then close the browser

  Scenario: Record Title
    Given user is on the "Create New" page
      And selects the "Loan In" radio button on the Create New page
      And clicks on the Create button
      And user enters "1234" in the "Loan In" "Loan In Number" field
      And user enters "Woody Allen" in the "Loan In" "Lender" vocab field
    Then the titlebar should contain "1234"
    Then the titlebar should contain "Woody Allen"
      And user clicks the plus to repeat the "Lender" form
      # not sure if following line works
      And user adds "Woodrow Wilson" in the "Lender" field of the second "Lender" form
      And user selects the additional "Lender" as primary
    Then the titlebar should contain "1234"
    Then the titlebar should contain "Woodrow Wilson"
    Then close the browser

  Scenario: Behavior After Save
    Given user is on the "Create New" page
      And selects the "Loan In" radio button on the Create New page
      And clicks on the Create button
      And user enters "1234" in the "Loan In" "Loan In Number" field
      And user saves the record
    Then the record is successfully saved
    Then "GMT-0800 (PST)" should be displayed in the message bar
    Then disables top and bottom "cancel" buttons
    Then enables top and bottom "delete" buttons
    Then close the browser

  Scenario: Docking Title Bar
    Given user is on the "Create New" page
      And selects the "Loan In" radio button on the Create New page
      And clicks on the Create button
      And user enters "1234" in the "Loan In" "Loan In Number" field
      And user clicks the plus to repeat the "Lender" form
      And user clicks the plus to repeat the "Lender" form
      And user clicks the plus to repeat the "Lender" form
      And user clicks the plus to repeat the "Lender" form
      And user clicks the plus to repeat the "Lender" form
      And user clicks the plus to repeat the "Lender" form
      And user clicks the plus to repeat the "Lender" form
      And user clicks the plus to repeat the "Lender" form
      And user clicks the plus to repeat the "Lender" form
      And user clicks the plus to repeat the "Lender" form
      And user clicks the plus to repeat the "Lender" form
      And user clicks the plus to repeat the "Lender" form
      # following line does not exist
      And user clicks on the "Loan In Date" field
    # not sure if titlebar term works for docking bar
    Then the titlebar should contain "1234"
    Then the titlebar should contain "Loan In"
    Then close the browser

  Scenario: Folding/Unfolding Boxes
    # folding steps do not exist
    Given user is on the "Create New" page
      And selects the "Loan In" radio button on the Create New page
      And clicks on the Create button
    Given user clicks on the "Fold" symbol next to "Loans In Information"
    Then the "Loans In Information" section should fold
    Then the "Fold" symbol next to "Loans In Information" should be a folded symbol
    Given user clicks on the "Fold" symbol next to "Loans In Information"
    Then the "Loans In Information" section should unfold
    Then the "Fold" symbol next to "Loans In Information" should be an unfolded symbol
    Then close the browser

  Scenario: Vocabulary Pivoting
    Given user is on the "Create New" page
      And selects the "Loan In" radio button on the Create New page
      And clicks on the Create button
      And user enters "1.2.3.4.5" in the "Loan In" "Loan In Number" field
      And user adds "John Doe" to the "Loan In" "Lender" vocab field
      And user saves the record
    Then the record is successfully saved
    Then disables top and bottom "cancel" buttons
    Then enables top and bottom "delete" buttons
    # not sure if types should be specified
    Then "John Doe" should appear in the Terms Used sidebar
    Then "person" should appear in the Terms Used sidebar
    Then "lender" should appear in the Terms Used sidebar
      And user clicks on "John Doe" in the Terms Used sidebar
    Then the titlebar should contain "John Doe"
    # Used By steps do not exist
    Then "1.2.3.4.5" should in the Used By sidebar
      And user clicks on "1.2.3.4.5" in the Used By sidebar
    Then the titlebar should contain "1.2.3.4.5"
      And user clicks on the delete button
      And user clicks the confirmation delete button
      And user clicks delete confirmation OK button
    Then close the browser

## The remainder of this feature file, below, needs to be converted from narrative (broad declarative steps)
## to testable steps
#
  # Scenario: Keyboard Accessibility
  #   # doesn't work, need to do later
  #   When user uses tab through the entire formula
  #   Then each of the fields should be reachable
  #   Then the two save buttons and Cancel button should be reachable
  #   Then the folding functionality should be usable # tab to it and hit space
  #   Then the focus is visible at all times
  #   Then the terms used in the right frame should be reachable
