#Created by Forest Yang on 12/29

@advancedsearch
Feature: Advanced Search - Loans Out

  #Test1
  Scenario: Advanced Search Fields - Loan Out Number
    Given user is on the "Create New" page
      And selects the "Loan Out" radio button on the Create New page
      And clicks on the Create button
    Then the titlebar should contain "Loan Out"
      And enters "textbook" in the "Loan Out" "Loan Out Number" field
      And clicks on the "Loan Out" "Loan Purpose" field
    Then a drop down list should appear in the "Loan Purpose" row
      And selects "Exhibition" from dropdown in "Loan Purpose" row
      And enters "textbook" in the "Loan Out" "Borrower" vocab field
      And adds "textbook" to "Local Persons"
      And clicks on the "Loan Out" "Loan Status" field
    Then a drop down list should appear in the "Loan Status" row
      And selects "Agreed" from dropdown in "Loan Status" row
      And enters "2022-01-01" in the "Loan Out" "Loan Out Date" field
      And enters "2022-01-01" in the "Loan Out" "Loan Return Date" field
      And enters "2022-01-01" in the "Loan Out" "Loan Renewal Application Date" field
      And clicks the "Save" button
    Then the record is successfully saved
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Loan Out" from record type dropdown
      And enters "textbook" in the "Advanced Search" "Loan Out Number" field
      And clicks the "Search" button
    Then the search results should contain "textbook"
    Then close the browser

  Scenario: Search by Loan Purpose
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Loan Out" from record type dropdown
      And clicks on the "Advanced Search" "Loan Purpose" field
    Then a drop down list should appear in the "Loan Purpose" row
      And selects "Exhibition" from dropdown in "Loan Purpose" row
      And clicks the "Search" button
    Then the search results should contain "textbook" 
    Then close the browser

  Scenario: Search by Borrower
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Loan Out" from record type dropdown
      And enters "textbook" in the "Advanced Search" "Borrower" vocab field
      And clicks on "textbook" from autocomplete options
      And clicks the "Search" button
    Then the search results should contain "textbook"
    Then close the browser

  Scenario: Search by Loan Status
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Loan Out" from record type dropdown
      And clicks on the "Advanced Search" "Loan Status" field
    Then a drop down list should appear in the "Loan Status" row
      And selects "Agreed" from dropdown in "Loan Status" row
      And clicks the "Search" button
    Then the search results should contain "textbook"
    Then close the browser

  Scenario: Search by Loan Out Date
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Loan Out" from record type dropdown
      And enters "2022-01-01" in the "Advanced Search" "Loan Out Date" field
      And clicks the "Search" button
    Then the search results should contain "textbook"
    Then close the browser

  Scenario: Search by Loan Return Date
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Loan Out" from record type dropdown
      And enters "2022-01-01" in the "Advanced Search" "Loan Return Date" field
      And clicks the "Search" button
    Then the search results should contain "textbook"
    Then close the browser

  Scenario: Search by Loan Renewal Application Date
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Loan Out" from record type dropdown
      And enters "2022-01-01" in the "Advanced Search" "Loan Renewal Application Date" field
      And clicks the "Search" button
    Then the search results should contain "textbook" 
    Then close the browser

  Scenario: Search by Modified Date
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Loan Out" from record type dropdown
      And enters today's date in the "Modified Date" field
      And clicks the "Search" button
    Then the search results should contain "textbook"
    Then close the browser

  Scenario: Search by username
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Loan Out" from record type dropdown
      And enters username in the "Advanced Search" "Record last modified by" field
      And clicks the "Search" button
    Then the search results should contain "textbook"
    Then close the browser

  Scenario: textb**
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Loan Out" from record type dropdown
      And enters "textb*" in the "Advanced Search" "Loan Out Number" field
      And clicks the "Search" button
    Then the search results should contain "textbook"
    Then close the browser

  #Test2
  Scenario: Boolean field based search
    Given user is on the "Create New" page
      And selects the "Loan Out" radio button on the Create New page
      And clicks on the Create button
    Then the titlebar should contain "Loan Out" 
      And enters "example" in the "Loan Out" "Loan Out Number" field
      And enters "John Doe" in the "Loan Out" "Borrower" vocab field
      And adds "John Doe" to "Local Persons"
      And clicks on the "Loan Out" "Loan Purpose" field
    Then a drop down list should appear in the "Loan Purpose" row
      And selects "Research" from dropdown in "Loan Purpose" row
      And enters "testtest" in the "Loan Out" "Loan Out Note" field
      And clicks the "Save" button
    Then the record is successfully saved
    Given user is on the "Create New" page
      And selects the "Loan Out" radio button on the Create New page
      And clicks on the Create button
    Then the titlebar should contain "Loan Out" 
      And enters "exampleexample" in the "Loan Out" "Loan Out Number" field
      And enters "John Doe" in the "Loan Out" "Borrower" vocab field
      And clicks on "John Doe" from autocomplete options
      And clicks on the "Loan Out" "Loan Purpose" field
    Then a drop down list should appear in the "Loan Purpose" row
      And selects "Research" from dropdown in "Loan Purpose" row
      And enters "testtest" in the "Loan Out" "Loan Out Conditions" field
      And clicks the "Save" button
    Then the record is successfully saved
    Given user is on the "Create New" page
      And selects the "Loan Out" radio button on the Create New page
      And clicks on the Create button
    Then the titlebar should contain "Loan Out"
      And enters "exampleexampleexample" in the "Loan Out" "Loan Out Number" field
      And enters "John Doe" in the "Loan Out" "Borrower" vocab field
      And clicks on "John Doe" from autocomplete options
      And clicks on the "Loan Out" "Loan Purpose" field
    Then a drop down list should appear in the "Loan Purpose" row
      And selects "Photography" from dropdown in "Loan Purpose" row
      And enters "testtest" in the "Loan Out" "Loan Out Note" field
      And clicks the "Save" button
    Then the record is successfully saved
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search" 
      And selects "any (OR)" from the "Field-based Search" drop down
      And selects "Loan Out" from record type dropdown
      And enters "John Doe" in the "Advanced Search" "Borrower" vocab field
      And clicks on "John Doe" from autocomplete options
      And clicks on the "Advanced Search" "Loan Purpose" field
    Then a drop down list should appear in the "Loan Purpose" row
      And selects "Research" from dropdown in "Loan Purpose" row
      And clicks the "Search" button
    Then the search results should contain "example"
    Then the search results should contain "exampleexample"
    Then the search results should contain "exampleexampleexample"
      And clicks the "Advanced search" button 
    Then the titlebar should contain "Advanced Search"
      And selects "Loan Out" from record type dropdown
      And selects "all (AND)" from the "Field-based Search" drop down
      And enters "John Doe" in the "Advanced Search" "Borrower" vocab field
      And clicks on "John Doe" from autocomplete options
      And clicks on the "Advanced Search" "Loan Purpose" field
    Then a drop down list should appear in the "Loan Purpose" row
      And selects "Research" from dropdown in "Loan Purpose" row
      And clicks the "Search" button
    Then the search results should contain "example"
    Then the search results should contain "exampleexample"
    Then the search results should not contain "exampleexampleexample"
    Then close the browser

  #Test3
  Scenario: Boolean and Keyword Search
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And enters "testtest" in the "keyword search" field
      And selects "Loan Out" from record type dropdown
      And selects "any (OR)" from the "Field-based Search" drop down
      And enters "John Doe" in the "Advanced Search" "Borrower" vocab field
      And clicks on "John Doe" from autocomplete options
      And clicks on the "Advanced Search" "Loan Purpose" field
    Then a drop down list should appear in the "Loan Purpose" row
      And selects "Research" from dropdown in "Loan Purpose" row
      And clicks the "Search" button
    Then the search results should contain "example"
    Then the search results should contain "exampleexample"
    Then the search results should not contain "exampleexampleexample"
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And enters "testtest" in the "keyword search" field
      And selects "Loan Out" from record type dropdown
      And selects "all (AND)" from the "Field-based Search" drop down
      And enters "John Doe" in the "Advanced Search" "Borrower" vocab field
      And clicks on "John Doe" from autocomplete options
      And clicks on the "Advanced Search" "Loan Purpose" field
    Then a drop down list should appear in the "Loan Purpose" field
      And selects "Research" from dropdown in "Loan Purpose" row
      And clicks the "Search" button
    Then the search results should contain "example"
    Then the search results should contain "exampleexample"
    Then the search results should not contain "exampleexampleexample"
    Then close the browser
