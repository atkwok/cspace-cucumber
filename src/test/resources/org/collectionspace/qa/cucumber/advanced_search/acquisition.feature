# Created by Cesar Villalobos on 01/07/2016

@advancedsearch
Feature: Advanced Search ­ Acquisition
    Searching for a record based on boolean-search as well as regular search terms

	Scenario: Advanced Search Fields and wildcard
	Given user is in the "Create New" page
        And selects the "Acquisition" radio button on the Create New page
        And enters "CQA71.1" in the "Acquisition Reference Number" field 
        And enters "2016-01-01" in the "Accession date" field
        And enters "2016-02-02" in the "Acquisition date" field 
        And selects "Gift" from the "Acquisition Method" drop down  
        And enters "CQA-71 Acquisition Source" in the "Acquisition Source" field 
        And selects "CQA-71 Acquisition Source" from autocomplete options
        And enters "CQA-71 Funding source" in the "Funding source" field 
        And selects "CQA-71 Funding source" from autocomplete options
        And enters "CQA-71 Test" in the "Field collection event name" field 
        And enters "textbook" in the "Credit Line" field 
        And clicks the "Save" button

        # Record Title
        And clicks the "Advanced Search" button 
        And selects "Acquisition" from the "Record Type Select" drop down
        And enters "CQA71.1" in the "Acquisition Reference Number" field
        And clicks the "search" button
        Then the search results should contain "CQA71.1"

        #Accession Date
        And clicks the "Advanced Search" button
        And selects "Acquisition" from the "Record Type Select" drop down
        And enters "2016-01-01" in the "Accession date" field
        And clicks the "search" button
        Then the search results should contain "CQA71.1"

        #Acquisition Date
        And clicks the "Advanced Search" button
        And selects "Acquisition" from the "Record Type Select" drop down
        And enters "2016-02-02" in the "Acquisition date" field
        And clicks the "search" button
        Then the search results should contain "CQA71.1"

        #Acquisition Method
        And clicks the "Advanced Search" button
        And selects "Acquisition" from the "Record Type Select" drop down
        And selects "Gift" from the "Acquisition Method" drop down
        And clicks the "search" button
        Then the search results should contain "CQA71.1"

        #Acquisition Method
        And clicks the "Advanced Search" button
        And selects "Acquisition" from the "Record Type Select" drop down
        And enters "CQA-71 Acquisition Source" in the "Acquisition Source" field
        And selects "CQA-71 Acquisition Source" from autocomplete options        
        And clicks the "search" button
        Then the search results should contain "CQA71.1"

        #Acquisition Funding
        And clicks the "Advanced Search" button
        And selects "Acquisition" from the "Record Type Select" drop down
        And enters "CQA-71 Funding source" in the "Funding Source" field
        And selects "CQA-71 Funding source" from autocomplete options        
        And clicks the "search" button
        Then the search results should contain "CQA71.1"

        #Field Collection event name
        And clicks the "Advanced Search" button
        And selects "Acquisition" from the "Record Type Select" drop down
        And enters "CQA-71 Test" in the "Field collection event name" field 
        And clicks the "search" button
        Then the search results should contain "CQA71.1"

        #Todays Date
        And clicks the "Advanced Search" button
        And selects "Acquisition" from the "Record Type Select" drop down
        And enters today's date in the "Earliest Modified Date" field
        And clicks the "search" button
        Then the search results should contain "CQA71.1"

        #Admin 
        And clicks the "Advanced Search" button
        And selects "Acquisition" from the "Record Type Select" drop down
        And enters "admin@Collectionspace.org" in the "Record last modified by" date
        And clicks the "search" button
        Then the search results should contain "CQA71.1"
        Then close the browser



	Scenario: Boolean field­-based search
        Given user is in the "Create New" page
        And selects the "Acquisition" radio button on the Create New page
        And enters "CQA71.2" in the "Acquisition Reference Number" field
        And selects "Purchase" from the "Acquisition Method" drop down  
        And enters "testtest" in the "Acquisition Reason" field
        And enters "thank you" in the "Credit Line" field        
        And clicks the "Save" button

        And navigates to the "Create New" page 
        And selects the "Acquisition" radio button on the Create New page
        And enters "CQA71.3" in the "Acquisition Reference Number" field
        And selects "Purchase" from the "Acquisition Method" drop down  
        And enters "testtest" in the "Acquisition Note" field
        And enters "thank you" in the "Credit Line" field
        And clicks the "Save" button

        And navigates to the "Create New" page 
        And selects the "Acquisition" radio button on the Create New page
        And enters "CQA71.4" in the "Acquisition Reference Number" field
        And selects "Gift" from the "Acquisition Method" drop down  
        And enters "testtest" in the "Acquisition Provisos" field
        And enters "thank you" in the "Credit Line" field
        And clicks the "Save" button

		And clicks the "Advanced Search" button
        And selects "Acquisition" from the "Record Type Select" drop down
        And selects "any (OR)" from the "Field-based Search" drop down
        And enters "thank you" in the "Credit Line" field
        And selects "Purchase" from the "Acquisition Method" drop down  
        And clicks the "search" button
        Then the search results should contain "71.2"
        Then the search results should contain "71.3"        
        Then the search results should contain "71.4"

		And clicks the "Advanced Search" button
        And selects "Acquisition" from the "Record Type Select" drop down
        And selects "all (AND)" from the "Field-based Search" drop down
        And enters "thank you" in the "Credit Line" field
        And selects "Purchase" from the "Acquisition Method" drop down  
        Then the search results should contain "71.2"
        Then the search results should contain "71.3"        
        Then the search results should not contain "71.4"

        Then close the browser


	Scenario: Boolean and Keyword Search
        Given user is in the "My CollectionSpace" page
		And clicks the "Advanced Search" button
        And selects "Acquisition" from the "Record Type Select" drop down
        And selects "any (OR)" from the "Field-based Search" drop down
        And enters "thank you" in the "Credit Line" field
        And selects "Purchase" from the "Acquisition Method" drop down  
        And clicks the "search" button
        Then the search results should contain "71.2"
        Then the search results should contain "71.3"        
        Then the search results should contain "71.4"
        
        And clicks the "search" button
        And clicks the "Advanced Search" button
        And selects "Acquisition" from the "Record Type Select" drop down
        And selects "all (AND)" from the "Field-based Search" drop down
        And enters "thank you" in the "Credit Line" field
        And selects "Purchase" from the "Acquisition Method" drop down  
        Then the search results should contain "71.2"
        Then the search results should contain "71.3"        
        Then the search results should not contain "71.4"


        And navigates to the record with identification number "71.1"
        And clicks on the delete button 

        Then a delete confirmation dialog should appear
        And clicks on the delete button 
        Then the deletion should be confirmed in a dialog
        And navigates to the record with identification number "71.2"
        And clicks on the delete button 

        Then a delete confirmation dialog should appear
        And clicks on the delete button 
        Then the deletion should be confirmed in a dialog
        And navigates to the record with identification number "71.3"
        And clicks on the delete button 

        Then a delete confirmation dialog should appear
        And clicks on the delete button 
        Then the deletion should be confirmed in a dialog
        And navigates to the record with identification number "71.3"
        And clicks on the delete button 

        Then a delete confirmation dialog should appear
        And clicks on the delete button 
        Then the deletion should be confirmed in a dialog        
        Then close the browser


        Then close the browser


	
