# Created by Cesar Villalobos on 01/07/2016
# CQA-75 

@advancedsearch
Feature: Advanced Search Group
    Searching for a recently made group

    Scenario
        Given user is in the "Create New" page
        And selects the "Group" radio button on the Create New page
        And enters "textbook75" in the "Title" field
        And enters "CQA-75" in the "Group Owner" field
        And selects "CQA-75" from autocomplete options
        And clicks the "Save" button

        And clicks the "Advanced Search" button
        And selects "Group" from the "Record Type Select" drop down        
        And enters "textbook75" in the "Title" field
        And clicks the "search" button
        Then the search results should contain "textbook75"

        And clicks the "Advanced Search" button
        And selects "Group" from the "Record Type Select" drop down        
        And enters "CQA-75" in the "Owner" field
        And selects "CQA-75" from autocomplete field
        And clicks the "search" button
        Then the search results should contain "CQA-75"

        And clicks the "Advanced Search" button
        And selects "Group" from the "Record Type Select" drop down        
        And enters "textb*" in the "Title" field
        And clicks the "search" button
        Then the search results should contain "CQA-75"

        And navigates to the record with identification number "textbook75"
        And clicks on the delete button 

        Then a delete confirmation dialog should appear
        And clicks on the delete button 
        Then the deletion should be confirmed in a dialog
        
        Then close the browser

        # Delete the record 
