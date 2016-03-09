# Created by Cesar Villalobos on 01/07/2016
# CQA-75 

@advancedsearch
Feature: Advanced Search Group
    Searching for a recently made group

    Scenario
        Given user is in the "Create New" page
        And user selects the "Group" radio button on the Create New page
        And user enters "textbook75" in the "Title" field
        And user enters "CQA-75" in the "Group Owner" field
        And user selects "CQA-75" from autocomplete options
        And user saves the record

        And clicks the "Advanced Search" button
        And user selects "Group" from the "Record Type Select" drop down box        
        And user enters "textbook75" in the "Title" field
        And clicks the "search" button
        Then the search results should contain "textbook75"

        And clicks the "Advanced Search" button
        And user selects "Group" from the "Record Type Select" drop down box        
        And user enters "CQA-75" in the "Owner" field
        And user selects "CQA-75" from autocomplete field
        And clicks the "search" button
        Then the search results should contain "CQA-75"

        And clicks the "Advanced Search" button
        And user selects "Group" from the "Record Type Select" drop down box        
        And user enters "textb*" in the "Title" field
        And clicks the "search" button
        Then the search results should contain "CQA-75"

        And user goes to the record with identification number "textbook75"
        And user clicks the delete button
        Then a delete confirmation dialogue should appear
        And user clicks the delete button 
        Then the deletion should be confirmed in a dialogue
        
        Then close the browser

        # Delete the record 