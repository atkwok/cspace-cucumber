#created by forest yang on 12/28/2015

@advancedsearch
Feature: Advanced Search - Loans In
  #Test1 LOANS IN
  Scenario: Search by Loan In Number
    Given user is on the "Create New" page
      And selects the "Loan In" radio button on the Create New page
      And clicks on the Create button
    Then the titlebar should contain "Loan In"
      And enters "textbook" in the "Loan In" "Loan In Number" field
      And clicks on the "Loan In" "Loan Purpose" field
    Then a drop down list should appear in the "Loan Purpose" row
      And selects "Exhibition" from dropdown in "Loan Purpose" row
      And enters "textbook" in the "Loan In" "Lender" vocab field
      And adds "textbook" to "Local Persons"
      And enters "2011-01-01" in the "Loan In" "Loan In Date" field
      And enters "2011-01-01" in the "Loan In" "Loan In Return Date" field
      And enters "2011-01-01" in the "Loan In" "Loan Renewal Application Date" field
      And clicks the "Save" button
    Then the record is successfully saved
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Loan In" from record type dropdown
      And enters "textbook" in the "Advanced Search" "Loan In Number" field
      And clicks the "Search" button
    Then the search results should contain "textbook"
    Then close the browser

  Scenario: Search by Loan Purpose
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Loan In" from record type dropdown
      And clicks on the "Advanced Search" "Loan Purpose" field
    Then a drop down list should appear in the "Loan Purpose" row
      And selects "Exhibition" from dropdown in "Loan Purpose" row
      And clicks the "Search" button
    Then the search results should contain "textbook"
    Then close the browser

  Scenario: Search by Lender
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Loan In" from record type dropdown
      And enters "textbook" in the "Advanced Search" "Lender" vocab field
      And clicks on "textbook" from autocomplete options
      And clicks the "Search" button
    Then the search results should contain "textbook"
    Then close the browser

  Scenario: Search by Loan In Date
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Loan In" from record type dropdown
      And enters "2011-01-01" in the "Advanced Search" "Loan In Date" field
      And clicks the "Search" button
    Then the search results should contain "textbook"
    Then close the browser

  Scenario: Search by Loan In Return Date
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Loan In" from record type dropdown
      And enters "2011-01-01" in the "Advanced Search" "Loan In Return Date" field
      And clicks the "Search" button
    Then the search results should contain "textbook"
    Then close the browser

  Scenario: Search by Loan In Renewal Application Date
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Loan In" from record type dropdown
      And enters "2011-01-01" in the "Advanced Search" "Loan In Renewal Application" field
      And clicks the "Search" button
    Then the search results should contain "textbook"
    Then close the browser

  Scenario: Search by Edit Date
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Loan In" from record type dropdown
      And enters today's date in the "Modified Date" field
      And clicks the "Search" button
    Then the search results should contain "textbook"
    Then close the browser

  Scenario: Search by username
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Loan In" from record type dropdown
      And enters username in the "Advanced Search" "Record last modified by" field
      And clicks the "Search" button
    Then the search results should contain "textbook"
    Then close the browser

  #Test2 
  Scenario: Boolean field-based search
    Given user is on the "Create New" page
      And selects the "Loan In" radio button on the Create New page
      And clicks on the Create button
    Then the titlebar should contain "Loan In"
      And enters "textbook2" in the "Loan In" "Loan In Number" field
      And clicks on the "Loan In" "Loan Purpose" field
    Then a drop down list should appear in the "Loan Purpose" row
      And selects "Research" from dropdown in "Loan Purpose" row
      And enters "testtest" in the "Loan In" "Loan In Conditions" field
      And enters "2001-01-01" in the "Loan In" "Loan In Date" field
      And clicks the "Save" button
    Then the record is successfully saved
    Given user is on the "Create New" page
      And selects the "Loan In" radio button on the Create New page
      And clicks on the Create button
    Then the titlebar should contain "Loan In"
      And enters "textbook3" in the "Loan In" "Loan In Number" field
      And clicks on the "Loan In" "Loan Purpose" field
    Then a drop down list should appear in the "Loan Purpose" row
      And selects "Research" from dropdown in "Loan Purpose" row
      And enters "testtest" in the "Loan In" "Loan In Conditions" field
      And enters "2001-01-01" in the "Loan In" "Loan In Date" field
      And clicks the "Save" button
    Then the record is successfully saved
    Given user is on the "Create New" page
      And selects the "Loan In" radio button on the Create New page
      And clicks on the Create button
    Then the titlebar should contain "Loan In" 
      And enters "textbook4" in the "Loan In" "Loan In Number" field
      And clicks on the "Loan In" "Loan Purpose" field
    Then a drop down list should appear in the "Loan Purpose" row
      And selects "Photography" from dropdown in "Loan Purpose" row
      And enters "testtest" in the "Loan In" "Loan In Conditions" field
      And enters "2001-01-01" in the "Loan In" "Loan In Date" field
      And clicks the "Save" button
    Then the record is successfully saved
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Loan In" from record type dropdown
      And selects "any (OR)" from the "Field-based Search" drop down
      And enters "2001-01-01" in the "Advanced Search" "Loan In Date" "Earliest" field
      And enters "2001-01-01" in the "Advanced Search" "Loan In Date" "Latest" field
      And clicks on the "Advanced Search" "Loan Purpose" field
    Then a drop down list should appear in the "Loan Purpose" row
      And selects "Research" from dropdown in "Loan Purpose" row
      And clicks the "Search" button
    Then the search results should contain "textbook2"
    Then the search results should contain "textbook3"
    Then the search results should contain "textbook4"
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Loan In" from record type dropdown
      And selects "all (AND)" from the "Field-based Search" drop down
      And enters "2001-01-01" in the "Advanced Search" "Loan In Date" "Earliest" field
      And enters "2001-01-01" in the "Advanced Search" "Loan In Date" "Latest" field
      And clicks on the "Advanced Search" "Loan Purpose" field
    Then a drop down list should appear in the "Loan Purpose" row
      And selects "Research" from dropdown in "Loan Purpose" row
      And clicks the "Search" button
    Then the search results should contain "textbook2"
    Then the search results should contain "textbook3"
    Then the search results should not contain "textbook4"
    Then close the browser

  #Test3
  Scenario: Boolean and Keyword Search
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And enters "testtest" in the "keyword search" field
      And clicks the "Search button" 
    Then the search results should contain "textbook2"
    Then the search results should contain "textbook3"
    Then the search results should contain "textbook4" 
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And enters "testtest" in the "keyword search" field
      And selects "Loan In" from record type dropdown
      And selects "any (OR)" from the "Field-based Search" drop down
      And enters "2001-01-01" in the "Advanced Search" "Loan In Date" "Earliest" field
      And enters "2001-01-01" in the "Advanced Search" "Loan In Date" "Latest" field
      And clicks on the "Advanced Search" "Loan Purpose" field
    Then a drop down list should appear in the "Loan Purpose" row
      And selects "Research" from dropdown in "Loan Purpose" row
      And clicks the "Search" button
    Then the search results should contain "textbook2"
    Then the search results should contain "textbook3"
    Then the search results should contain "textbook4"
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And enters "testtest" in the "keyword search" field
      And selects "Loan In" from record type dropdown
      And selects "all (AND)" from the "Field-based Search" drop down
      And enters "2001-01-01" in the "Advanced Search" "Loan In Date" "Earliest" field
      And enters "2001-01-01" in the "Advanced Search" "Loan In Date" "Latest" field
      And clicks on the "Advanced Search" "Loan Purpose" field
    Then a drop down list should appear in the "Loan Purpose" row
      And selects "Research" from dropdown in "Loan Purpose" row
      And clicks the "Search" button
    Then the search results should contain "textbook2"
    Then the search results should contain "textbook3"
    Then the search results should not contain "textbook4"
    Then close the browser
