# Created by Jennifer Lynn Be on 01/05/2016
# needs to be tested

@supplementaryprimary @group
Feature: Supplementary Manual QA - Group

  # Scenario: New Record Behavior
  #   Given user is on the "Create New" page
  #     And selects the "Group" radio button on the Create New page
  #     And clicks on the Create button
  #   Then the "cancel" button "should not" be clickable
  #   Then the "delete" button "should not" be clickable
  #   When user clicks the "add" button on the "Cataloging" area to the right
  #   Then the message "Please save the record you are creating before trying to relate other records to it." should be displayed
  #   When user clicks the "add" button on the "Procedures" area to the right
  #   Then the message "Please save the record you are creating before trying to relate other records to it." should be displayed
  #   Then close the browser

  Scenario: Record Title
  
    # Temporary workaround
    Given user is on a blank "Group" record
    
    # Given user is on the "Create New" page
    ## The following step leaves the Cataloging record's radio button selected,
    ## rather than selecting the Group record's radio button
    #   And selects the "Group" radio button
    #   And clicks on the Create button
    
      And enters "Blue" in the "Group" "Title" field
      And presses the Tab key
      
      # The following just leaves the value in the autocomplete field without selecting
      # a vocabulary to which to add it.
      # We might need to revise the fillVocabFieldLocatedByID() method in Utilities.java
      # And enters "Albert Smith" in the "Group" "Group Owner" vocab field
    
    Then the titlebar should contain "Blue"
    # Re-enable this step after the fillVocabFieldLocatedByID issue identified above is resolved
    # Then the titlebar should contain "Albert Smith"
    Then close the browser

  Scenario: Behavior After Save
  
    # Temporary workaround
    Given user is on a blank "Group" record
    
    # Given user is on the "Create New" page
    ## The following step leaves the Cataloging record's radio button selected,
    ## rather than selecting the Group record's radio button
    #   And selects the "Group" radio button
    #   And clicks on the Create button

      And enters "Red" in the "Group" "Title" field
      And clicks the "Save" button
    Then the record is successfully saved
    
    ## This value may be dependent on server time zone, or?
    # Then "GMT-0800 (PST)" should be displayed in the message bar
    
    Then disables top and bottom "cancel" buttons
    
    ## The top_bottom_buttons_should_be_clickable() step def method assumes
    ## the ID of the button name here would be "delete", rather than "deleteButton".
    ## (That 1:1 naming assumption works for the "cancel" buttons, above, but
    ## not for the "delete" buttons.)
    # Then enables top and bottom "delete" buttons
    
    Then close the browser

  # Scenario: Docking Title Bar
  #   Given user is on the "Create New" page
  #     And selects the "Group" radio button on the Create New page
  #     And clicks on the Create button
  #     And enters "Red" in the "Group" "Title" field
  #     # cannot enable a scroll to bottom of page
  #     And scrolls to the bottom of the page
  #   # not sure if titlebar term works for docking bar
  #   Then the titlebar should contain "Red"
  #   Then the titlebar should contain "Group"
  #   Then close the browser
  #
  # Scenario: Folding/Unfolding Boxes
  #   # folding steps do not exist
  #   Given user is on the "Create New" page
  #     And selects the "Group" radio button on the Create New page
  #     And clicks on the Create button
  #   Given user clicks on the "Fold" symbol next to "Group Information"
  #   Then the "Group Information" section should fold
  #   Then the "Fold" symbol next to "Group Information" should be a folded symbol
  #   Given user clicks on the "Fold" symbol next to "Group Information"
  #   Then the "Group Information" section should unfold
  #   Then the "Fold" symbol next to "Group Information" should be an unfolded symbol
  #   Then close the browser
  #
  # Scenario: Vocabulary Pivoting
  #   Given user is on the "Create New" page
  #     And selects the "Group" radio button on the Create New page
  #     And clicks on the Create button
  #     And enters "Blue" in the "Group" "Title" field
  #     And adds "Albert Smith" to the "Group" "Group Owner" vocab field
  #     And clicks the "Save" button
  #   Then the record is successfully saved
  #   Then disables top and bottom "cancel" buttons
  #   Then enables top and bottom "delete" buttons
  #   # not sure if types should be specified
  #   Then "Albert Smith" should appear in the "Terms Used" area
  #   Then "person" should appear in the "Terms Used" area
  #   Then "owner" should appear in the "Terms Used" area
  #     And clicks on "Albert Smith" in the "Terms Used" area
  #   Then the titlebar should contain "Albert Smith"
  #   # Used By steps do not exist
  #   Then "Blue" should in the Used By sidebar
  #     And clicks on "Blue" in the Used By sidebar
  #   Then the titlebar should contain "Blue"
  #     And clicks on the delete button
  #
  #     And clicks the confirmation delete button
  #     And clicks delete confirmation OK button
  #   Then close the browser

