# Created by Cesar Villalobos on 01/07/2016

@advancedsearch
Feature: Advanced Search ­ Condition Check
	# Enter feature description here

    Scenario: Advanced Search Fields
	    Given user is in the "Create New" page
        And selects the "Condition Check" radio button on the Create New page
        And enters "CQA73.1" in the "Condition Check/Assessment Reference Number" field 
        And selects "Low" from the "Object Audit Category" drop down        
        And selects "Needs no work" from the "Condition" drop down        
        And selects "Low" from the "Conservation Treatment Priority" drop down        
        And enters "2016-01-01" in the "Next Condition Check/Assessment Date" field 
        And enters "2016-02-02" in the "Condition Check/Assessment Date" field 
        And enters "textbook" in the "Condition Check/Assessment Date" field
        And clicks the "Save" button

        And clicks the "Advanced Search" button
        And selects "Condition Check" from the "Record Type Select" drop down
        And enters "CQA73" in the "Condition Check/Assessment Reference Number" field
        And clicks the "search" button
        Then the search results should contain "CQA73.1"

			# Object Audit Category
        And clicks the "Advanced Search" button
        And selects "Condition Check" from the "Record Type Select" drop down
        And selects "Low" from the "Object Audit Category" drop down    
        And clicks the "search" button    
        Then the search results should contain "CQA73.1"

			# Condition
        And clicks the "Advanced Search" button
        And selects "Condition Check" from the "Record Type Select" drop down
        And selects "Needs no work" from the "Condition" drop down        
        And clicks the "search" button
        Then the search results should contain "CQA73.1"

		# Conservation Treatment Priority
        And clicks the "Advanced Search" button
        And selects "Condition Check" from the "Record Type Select" drop down
        And selects "Low" from the "Object Audit Category" drop down    
        And clicks the "search" button
        Then the search results should contain "CQA73.1"

		# Next Condition Check/Assessment Date
        And clicks the "Advanced Search" button
        And selects "Condition Check" from the "Record Type Select" drop down
        And enters "2016-01-01" in the "Next Condition Check/Assessment Date" field
        And clicks the "search" button 
        Then the search results should contain "CQA73.1"

			# Condition Check/Assessment Date
        And clicks the "Advanced Search" button
        And selects "Condition Check" from the "Record Type Select" drop down
        And enters "2016-02-02" in the "Condition Check/Assessment Date" field 
        And clicks the "search" button
        Then the search results should contain "CQA73.1"

			# Last edited
        And clicks the "Advanced Search" button
        And selects "Condition Check" from the "Record Type Select" drop down
        And enters today's date in the "Earliest Modified Date" field
        And clicks the "search" button
        Then the search results should contain "CQA73.1"

        And clicks the "Advanced Search" button
        And selects "Condition Check" from the "Record Type Select" drop down
        And enters "admin@Collectionspace.org" in the "Record last modified by" date
        And clicks the "search" button
        Then the search results should contain "CQA73.1"

	    Then close the browser

	Scenario: Boolean field­-based search
        Given user is in the "Create New" page
        And selects the "Condition Check" radio button on the Create New page
        And enters "CQA73.2" in the "Condition Check/Assessment Reference Number" field
        And selects "Low" from the "Object Audit Category" drop down
        And selects "Needs no work" from the "Condition" drop down
        And enters "testtest" in the "Condition Check/Assessment Note" field
        And clicks the "Save" button


        And navigates to the "Create New" page 
 		And selects the "Condition Check" radio button on the Create New page
        And enters "CQA73.3" in the "Condition Check/Assessment Reference Number" field
        And selects "Low" from the "Object Audit Category" drop down
        And selects "Needs no work" from the "Condition" drop down
        And enters "testtest" in the "Display Recommendations" field
        And clicks the "Save" button        
      
        And navigates to the "Create New" page 
 		And selects the "Condition Check" radio button on the Create New page
        And enters "CQA73.4" in the "Condition Check/Assessment Reference Number" field
        And selects "Low" from the "Object Audit Category" drop down
        And selects "In jeopardy" from the "Condition" drop down
        And enters "testtest" in the "Handling Recommendations" field
        And clicks the "Save" button     

        And clicks the "Advanced Search button"
        And selects "Condition Check" from the "Record Type Select" drop down
        And selects "any (OR)" from the "Field-based Search" drop down
        And selects "Low" from the "Object audit category" drop down
        And selects "Needs no work" from the "Condition" drop down
        And clicks the "search" button
        Then the search results should contain "CQA73.2"
        Then the search results should contain "CQA73.3"        
        Then the search results should contain "CQA73.4"

        And clicks the "Advanced Search button"
        And selects "Condition Check" from the "Record Type Select" drop down
        And selects "all (AND)" from the "Field-based Search" drop down
        And selects "Low" from the "Object audit category" drop down
        And selects "Needs no work" from the "Condition" drop down
        And clicks the "search" button
        Then the search results should contain "CQA73.2"
        Then the search results should contain "CQA73.3"        
        Then the search results should not contain "CQA73.4"
        Then close the browser

	Scenario: Boolean and Keyword Search
        Given user is in the "My CollectionSpace" page
        And clicks the "Advanced Search" button
        And enters "testtest" in the "Keyword Search" field
        And selects "any (OR)" from the "Field-based Search" drop down
        And selects "Low" from the "Object audit category" drop down
        And selects "Needs no work" from the "Condition" drop down
        And clicks the "search" button
        Then the search results should contain "CQA73.2"
        Then the search results should contain "CQA73.3"
        Then the search results should contain "CQA73.4"

        And clicks the "Advanced Search" button
        And enters "testtest" in the "Keyword Search" field
        And selects "all (AND)" from the "Field-based Search" drop down
        And selects "Low" from the "Object audit category" drop down
        And selects "Needs no work" from the "Condition" drop down
        And clicks the "search" button
        Then the search results should contain "CQA73.2"
        Then the search results should contain "CQA73.3"
        Then the search results should not contain "CQA73.4"

        And navigates to the record with identification number "CQA73.1"
        And clicks on the delete button 

        Then a delete confirmation dialog should appear
        And clicks on the delete button 
        Then the deletion should be confirmed in a dialog
        And navigates to the record with identification number "CQA73.2"
        And clicks on the delete button 

        Then a delete confirmation dialog should appear
        And clicks on the delete button 
        Then the deletion should be confirmed in a dialog
        And navigates to the record with identification number "CQA73.3"
        And clicks on the delete button 

        Then a delete confirmation dialog should appear
        And clicks on the delete button 
        Then the deletion should be confirmed in a dialog
        And navigates to the record with identification number "CQA73.3"
        And clicks on the delete button 

        Then a delete confirmation dialog should appear
        And clicks on the delete button 
        Then the deletion should be confirmed in a dialog        
        Then close the browser


        Then close the browser


## DELETE THEM!
