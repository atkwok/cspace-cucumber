# Created by Cesar Villalobos on 01/07/2016

@advancedsearch
Feature: Advanced Search ­– Exhibition Planning
        Searching for records based on certain criteria on the advanced search page

    Scenario: Advanced Search Fields
        Given user is in the "Create New" page
        And selects the "Exhibition" radio button on the Create New page
        And enters "CQA74.1" in the "Exhibition Number" field 
        And enters "CQA74 Test" in the "Exhibition Title" field 
        And selects "Permanent" from the "Exhibition Type" drop down  
        And enters "CQA74 Venue" in the "Venue" field 
        And selects "CQA74 Venue" from autocomplete options
        And enters "2016-01-01" in the "Venue Opening Date" field 
        And enters "textbook" in the "Planning Notes" field 
        And clicks the "Save" button

        # Record Title
        And clicks the "Advanced Search button"
        And selects "Exhibition" from the "Record Type Select" drop down
        And enters "CQA74 Test" in the "Exhibition Title" field
        And clicks the "search" button
        Then the search results should contain "CQA74.1"

        # Record ID number
        And clicks the "Advanced Search button"
        And selects "Exhibition" from the "Record Type Select" drop down
        And enters "CQA74.1" in the "Exhibition Number" field
        And clicks the "search" button
        Then the search results should contain "CQA74.1"

        # Exhibition Type
        And clicks the "Exhibition Type"
        And selects "Exhibition" from the "Record Type Select" drop down
        And selects "Permanent" from the "Exhibition Type" drop down
        And clicks the "search" button
        Then the search results should contain "CQA74.1"

        # Venue
        And clicks the "Advanced Search button"
        And selects "Exhibition" from the "Record Type Select" drop down
        And enters "CQA74 Venue" in the "Venues" field 
        And selects "CQA74 Venue" from autocomplete options
        And clicks the "search" button
        Then the search results should contain "CQA74.1"

        # Venue
        And clicks the "Advanced Search button"
        And selects "Exhibition" from the "Record Type Select" drop down
        And enters "2016-01-01" in the "Earliest Opening Date" field 
        And clicks the "search" button
        Then the search results should contain "CQA74.1"

        #Earliest Modified
        And clicks the "Advanced Search button"
        And selects "Exhibition" from the "Record Type Select" drop down
        And enters today's date in the "Earliest Modified Date" field
        And clicks the "search" button
        Then the search results should contain "CQA74.1"

        #Earliest Modified
        And clicks the "Advanced Search button"
        And selects "Exhibition" from the "Record Type Select" drop down
        And enters "admin@Collectionspace.org" in the "Record last modified by" date
        And clicks the "search" button
        Then the search results should contain "CQA74.1"

        Then close the browser

    Scenario: Boolean field­-based search
        Given user is in the "Create New" page
        And selects the "Exhibition" radio button on the Create New page
        And enters "CQA74.2" in the "Exhibition Number" field
        And selects "Permanent" from the "Exhibition Type" drop down
        And enters "Globex Corporation" in the "Sponsor" field
        And selects "Globex Corporation" from autocomplete options
        And enters "testtest" in the "Boilerplate Text" field
        And clicks the "Save" button

        And navigates to the "Create New" page 
        And selects the "Exhibition" radio button on the Create New page
        And enters "CQA74.3" in the "Exhibition Number" field
        And selects "Permanent" from the "Exhibition Type" drop down  
        And enters "Globex Corporation" in the "Sponsor" field 
        And selects "Globex Corporation" from autocomplete options
        And enters "testtest" in the "Planning Notes" field 
        And clicks the "Save" button

        And navigates to the "Create New" page 
        And selects the "Exhibition" radio button on the Create New page
        And enters "CQA74.4" in the "Exhibition Number" field
        And selects "Permanent" from the "Exhibition Type" drop down  
        And enters "Osato Chemicals" in the "Sponsor" field 
        And selects "Osato Chemicals" from autocomplete options
        And enters "testtest" in the "Curatorial Notes" field 
        And clicks the "Save" button


        And clicks the "Advanced Search button"
        And selects "Exhibition" from the "Record Type Select" drop down
        And enters "Globex Corporation" in the "Sponsor" field 
        And selects "Globex Corporation" from autocomplete options
        And selects "Permanent" from the "Exhibition Type" drop down  
        And clicks the "search" button
        Then the search results should contain "CQA74.2"
        Then the search results should contain "CQA74.3"
        Then the search results should contain "CQA74.4"


        And clicks the "Advanced Search button"
        And selects "Exhibition" from the "Record Type Select" drop down
        And selects "all (AND)" from the "Field-based Search" drop down
        And selects "Permanent" from the "Exhibition Type" drop down          
        And enters "Globex Corporation" in the "Sponsor" field 
        And selects "Globex Corporation" from autocomplete options        
        And clicks the "search" button
        Then the search results should contain "CQA74.2"
        Then the search results should contain "CQA74.3"        
        Then the search results should not contain "CQA74.4"

        Then close the browser


    Scenario: Boolean and Keyword Search
        Given user is in the "My CollectionSpace" page
        And clicks the "Advanced Search" button
        And enters "testtest" in the "Keyword Search" field
        And selects "Exhibition" from the "Record Type Select" drop down
        And enters "Globex Corporation" in the "Sponsor" field 
        And selects "Globex Corporation" from autocomplete options            
        And clicks the "search" button
        Then the search results should contain "CQA74.2"
        Then the search results should contain "CQA74.3"
        Then the search results should contain "CQA74.4"

        And clicks the "Advanced Search" button
        And enters "testtest" in the "Keyword Search" field
        And selects "all (AND)" from the "Field-based Search" drop down
        And enters "Globex Corporation" in the "Sponsor" field 
        And selects "Globex Corporation" from autocomplete options
        And clicks the "search" button
        Then the search results should contain "CQA74.2"
        Then the search results should contain "CQA74.3"        
        Then the search results should not contain "CQA74.4"

        And navigates to the record with identification number "CQA74.1"
        And clicks on the delete button 

        Then a delete confirmation dialog should appear
        And clicks on the delete button 
        Then the deletion should be confirmed in a dialog
        And navigates to the record with identification number "CQA74.2"
        And clicks on the delete button 

        Then a delete confirmation dialog should appear
        And clicks on the delete button 
        Then the deletion should be confirmed in a dialog
        And navigates to the record with identification number "CQA74.3"
        And clicks on the delete button 

        Then a delete confirmation dialog should appear
        And clicks on the delete button 
        Then the deletion should be confirmed in a dialog
        And navigates to the record with identification number "CQA74.3"
        And clicks on the delete button 

        Then a delete confirmation dialog should appear
        And clicks on the delete button 
        Then the deletion should be confirmed in a dialog        
        Then close the browser

# Dont forget to delete the record
