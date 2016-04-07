#Created by Forest Yang on 1/9/2016

@advancedsearch
Feature: Advanced Search - Storage Location

	#Test1
	Scenario: Advanced Search Fields
	  Given user is on the "Create New" page
	    And selects the "Storage Location" radio button on the Create New page
	    And enters "LanaDelRey" in the "Storage Location" "Display Name" field
	    And enters "SadGirl" in the "Storage Location" "Name" field
	    And clicks on the "Storage Location" "Language" field
	  Then a drop down list should appear in the "Language" row
	    And selects "Italian" from dropdown in "Language" row
	    And enters "Rare Jazz Collection" in the "Storage Location" "Access Note" field
	    And enters "Your Heart" in the "Storage Location" "Address" field
	    And enters "Sedated" in the "Storage Location" "Condition Note" field
	    And clicks on the "Storage Location" "Term Type" field
	  Then a drop down list should appear in the "Term Type" row
	    And selects "descriptor" from dropdown in "Term Type" row
	    And clicks on the "Storage Location" "Term Status" field
	  Then a drop down list should appear in the "Term Status" row
	    And selects "Rejected" from dropdown in "Term Status" row
	    And enters "textbook" in the "Storage Location" "Security Note" field
	    And clicks the "Save" button
	  Then the record is successfully saved
	    And clicks the "Advanced search" button
	  Then the titlebar should contain "Advanced Search"
	    And selects "Storage Location" from record type dropdown
	    And enters "LanaDelRey" in the "Advanced Search" "Display Name" field
	    And clicks the "Search" button
	  Then the search results should contain "LanaDelRey"
	  Then close the browser

	Scenario: Search by Name 
	  Given user is on the "My Collectionspace" page
	    And clicks the "Advanced search" button
	  Then the titlebar should contain "Advanced Search"
	    And selects "Storage Location" from record type dropdown
	    And enters "SadGirl" in the "Advanced Search" "Name" field
	    And clicks the "Search" button
	  Then the search results should contain "LanaDelRey"
	  Then close the browser

	Scenario: Search by Language
	  Given user is on the "My Collectionspace" page
	    And clicks the "Advanced search" button
	  Then the titlebar should contain "Advanced Search"
	    And selects "Storage Location" from record type dropdown
	    And clicks on the "Advanced Search" "Language" field
	  Then a drop down list should appear in the "Language" row
	    And selects "Italian" from dropdown in "Language" row
	    And clicks the "Search" button
	  Then the search results should contain "LanaDelRey"
	  Then close the browser

	Scenario: Search by Access Note
	  Given user is on the "My Collectionspace" page
	    And clicks the "Advanced search" button
	  Then the titlebar should contain "Advanced Search"
	    And selects "Storage Location" from record type dropdown
	    And enters "Rare Jazz Collection" in the "Advanced Search" "Access Note" field
	    And clicks the "Search" button
	  Then the search results should contain "LanaDelRey"
	  Then close the browser

	Scenario: Search by Address
	  Given user is on the "My Collectionspace" page
	    And clicks the "Advanced search" button
	  Then the titlebar should contain "Advanced Search"
	    And selects "Storage Location" from record type dropdown
	    And enters "Your Heart" in the "Advanced Search" "Address" field
	    And clicks the "Search" button
	  Then the search results should contain "LanaDelRey"
	  Then close the browser

	Scenario: Search by Condition Note
	  Given user is on the "My Collectionspace" page
	    And clicks the "Advanced search" button
	  Then the titlebar should contain "Advanced Search"
	    And selects "Storage Location" from record type dropdown
	    And enters "Sedated" in the "Advanced Search" "Condition Note" field
	    And clicks the "Search" button
	  Then the search results should contain "LanaDelRey"
	  Then close the browser

	Scenario: Search by Term Type
	  Given user is on the "My Collectionspace" page
	    And clicks the "Advanced search" button
	  Then the titlebar should contain "Advanced Search"
	    And selects "Storage Location" from record type dropdown
	    And clicks on the "Advanced Search" "Term Type" field
	  Then a drop down list should appear in the "Term Type" row
	    And selects "descriptor" from dropdown in "Term Type" row
	    And clicks the "Search" button
	  Then the search results should contain "LanaDelRey"
	  Then close the browser

	Scenario: Search by Term Status
	  Given user is on the "My Collectionspace" page
	    And clicks the "Advanced search" button
	  Then the titlebar should contain "Advanced Search"
	    And selects "Storage Location" from record type dropdown
	    And clicks on the "Advanced Search" "Term Status" field
	  Then a drop down list should appear in the "Term Status" row
	    And selects "Rejected" from dropdown in "Term Status" row
	    And clicks the "Search" button
	  Then the search results should contain "LanaDelRey"
	  Then close the browser

	Scenario: Search by Security Note
      Given user is on the "My Collectionspace" page
		And clicks the "Advanced search" button
	  Then the titlebar should contain "Advanced Search"
		And selects "Storage Location" from record type dropdown
	    And enters "textbook" in the "Advanced Search" "Security Note" field
		And clicks the "Search" button
	  Then the search results should contain "LanaDelRey"
	  Then close the browser

	Scenario: Search by Modified Date
	  Given user is on the "My Collectionspace" page
	    And clicks the "Advanced search" button
	  Then the titlebar should contain "Advanced Search"
	    And selects "Storage Location" from record type dropdown
	    And enters today's date in the "Modified Date" field
	    And clicks the "Search" button
	  Then the search results should contain "Lana Del Rey"
	  Then close the browser

	Scenario: Search by username
	  Given user is on the "My Collectionspace" page
	    And clicks the "Advanced search" button
	  Then the titlebar should contain "Advanced Search"
	    And selects "Storage Location" from record type dropdown
	    And enters username in the "Advanced Search" "Record last modified by" field
	    And clicks the "Search" button
	  Then the search results should contain "Lana Del Rey"
	  Then close the browser

	Scenario: Search by partial Security Note
	  Given user is on the "My Collectionspace" page
	    And clicks the "Advanced search" button
	  Then the titlebar should contain "Advanced Search"
	    And selects "Storage Location" from record type dropdown
	    And enters "textb*" in the "Advanced Search" "Security Note" field
	    And clicks the "Search" button
	  Then the search results should contain "LanaDelRey"
	  Then close the browser

	#Test2
	Scenario: Boolean field based search
	  Given user is on the "Create New" page
	    And selects the "Storage Location" radio button on the Create New page
	    And clicks on the Create button
	  Then the titlebar should contain "Storage Location"
	    And enters "Top Shelf1" in the "Storage Location" "Display Name" field
	    And clicks on the "Storage Location" "Term Status" field
	  Then a drop down list should appear in the "Term Status" row
	    And selects "Accepted" from dropdown in "Term Status" row
	    And enters "testtest" in the "Storage Location" "Security Note" field
	    And clicks the "Save" button
	  Then the record is successfully saved
	  Given user is on the "Create New" page
	    And selects the "Storage Location" radio button on the Create New page
	    And clicks on the Create button
	  Then the titlebar should contain "Storage Location"
	    And enters "Top Shelf2" in the "Storage Location" "Display Name" field
	    And clicks on the "Storage Location" "Term Status" field
	  Then a drop down list should appear in the "Term Status" row
	    And selects "Accepted" from dropdown in "Term Status" row
	    And enters "testtest" in the "Storage Location" "Access Note" field
	    And clicks the "Save" button
	  Then the record is successfully saved
	  Given user is on the "Create New" page
	    And selects the "Storage Location" radio button on the Create New page
	    And clicks on the Create button
	  Then the titlebar should contain "Storage Location"
	    And enters "Top Shelf3" in the "Storage Location" "Display Name" field
	    And clicks on the "Storage Location" "Term Status" field
	  Then a drop down list should appear in the "Term Status" row
	    And selects "Rejected" from dropdown in "Term Status" row
	    And enters "testtest" in the "Storage Location" "Condition Note" field
	    And clicks the "Save" button
	  Then the record is successfully saved
	    And clicks the "Advanced search" button
	  Then the titlebar should contain "Advanced Search"
	    And selects "Storage Location" from record type dropdown
	    And selects "any (OR)" from the "Field-based Search" drop down
	    And enters "Top Shelf3" in the "Advanced Search" "Display Name" field
	    And clicks on the "Advanced Search" "Term Status" field
	  Then a drop down list should appear in the "Term Status" row
	    And selects "Accepted" from dropdown in "Term Status" row
	    And clicks the "Search" button
	  Then the search results should contain "Top Shelf1"
	  Then the search results should contain "Top Shelf2"
	  Then the search results should contain "Top Shelf3"
	    And clicks the "Advanced search" button
	  Then the titlebar should contain "Advanced Search"
	    And selects "Storage Location" from record type dropdown
	    And selects "all (AND)" from the "Field-based Search" drop down
	    And enters "Top Shelf3" in the "Advanced Search" "Display Name" field
	    And clicks on the "Advanced Search" "Term Status" field
	  Then a drop down list should appear in the "Term Status" row
	    And selects "Accepted" from dropdown in "Term Status" row
	    And clicks the "Search" button
	  Then the search results should not contain "Top Shelf3"
	  Then the search results should not contain "Top Shelf1"
	  Then the search results should not contain "Top Shelf2"
	  Then close the browser

	#Test3
	Scenario: Boolean and Keyword Search
	  Given user is on the "My Collectionspace" page
	    And clicks the "Advanced search" button
	  Then the titlebar should contain "Advanced Search"
	    And selects "Storage Location" from record type dropdown
	    And selects "any (OR)" from the "Field-based Search" drop down
	    And enters "testtest" in the "keyword search" field
	    And enters "Top Shelf3" in the "Advanced Search" "Display Name" field
	    And clicks on the "Advanced Search" "Term Status" field
	  Then a drop down list should appear in the "Term Status" row
	    And selects "Accepted" from dropdown in "Term Status" row
	    And clicks the "Search" button
	  Then the search results should contain "Top Shelf1" 
	  Then the search results should contain "Top Shelf2"
	  Then the search results should contain "Top Shelf3"
	    And clicks the "Advanced search" button
	  Then the titlebar should contain "Advanced Search"
	    And selects "Storage Location" from record type dropdown
	    And selects "all (AND)" from the "Field-based Search" drop down
	    And enters "testtest" in the "keyword search" field
	    And clicks on the "Advanced Search" "Term Status" field
	  Then a drop down list should appear in the "Term Status" row
	    And selects "Accepted" from dropdown in "Term Status" row
	    And clicks the "Search" button
	  Then the search results should contain "Top Shelf1"
	  Then the search results should contain "Top Shelf2"
	  Then the search results should not contain "Top Shelf3"
	  Then close the browser








