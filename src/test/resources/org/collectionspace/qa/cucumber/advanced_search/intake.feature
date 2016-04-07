#Created by Forest Yang on 1/8/2016

@advancedsearch
Feature: Advanced Search - Intake

  #Test1
  Scenario: Advanced Search Fields
    Given user is on the "Create New" page
      And selects the "Intake" radio button on the Create New page
      And clicks on the Create button
    Then the titlebar should contain "Intake"
      And enters "Lagume" in the "Intake" "Intake Entry Number" field
      And enters "Samwise" in the "Intake" "Current Owner" vocab field
      And adds "Samwise" to "Local Persons"
      And enters "Anathema" in the "Intake" "Depositor" vocab field
      And adds "Anathema" to "Local Persons"
      And enters "2011-01-01" in the "Intake" "Entry Date" field
      And enters "2011-01-01" in the "Intake" "Return Date" field
      And clicks on the "Intake" "Entry Method" field
    Then a drop down list should appear in the "Entry Method" row
      And selects "Found on doorstep" from dropdown in "Entry Method" row
      And clicks on the "Intake" "Entry Reason" field
    Then a drop down list should appear in the "Entry Reason" row
      And selects "Enquiry" from dropdown in "Entry Reason" row
      And enters "Azkaban" in the "Intake" "Current Location" vocab field
      And adds "Azkaban" to "Local Storage Locations"
      And enters "textbook" in the "Intake" "Field collection event name" field
      And clicks the "Save" button
    Then the record is successfully saved
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Intake" from record type dropdown
      And enters "Samwise" in the "Advanced Search" "Current Owner" vocab field
      And clicks on "Samwise" from autocomplete options
      And clicks the "Search" button
    Then the search results should contain "Lagume"
    Then close the browser

  Scenario: Search by Intake Entry Number
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Intake" from record type dropdown
      And enters "Lagume" in the "Advanced Search" "Intake Entry Number" field
      And clicks the "Search" button
    Then the search results should contain "Lagume"
    Then close the browser

  Scenario: Search by Depositor
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Intake" from record type dropdown
      And enters "Anathema" in the "Intake" "Depositor" vocab field
      And clicks on "Anathema" from autocomplete options
      And clicks the "Search" button
    Then the search results should contain "Lagume"
    Then close the browser

  Scenario: Search by Entry Date
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Intake" from record type dropdown
      And enters "2011-01-01" in the "Advanced Search" "Entry Date" field
      And clicks the "Search" button
    Then the search results should contain "Lagume"
    Then close the browser

  Scenario: Search by Return Date
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Intake" from record type dropdown
      And enters "2011-01-01" in the Advanced Search "Return Date" field
      And clicks the "Search" button
    Then the search results should contain "Lagume"
    Then close the browser

  Scenario: Search by Entry Method
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Intake" from record type dropdown
      And clicks on the "Advanced Search" "Entry Method" field
    Then a drop down list should appear in the "Entry Method" row
      And selects "Found on doorstep" from dropdown in "Entry Method" row
      And clicks the "Search" button
    Then the search results should contain "Lagume"
    Then close the browser

  Scenario: Search by Entry Reason
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Intake" from record type dropdown
      And clicks on the "Advanced Search" "Entry Reason" field
    Then a drop down list should appear in the "Entry Reason" row
      And selects "Enquiry" from dropdown in "Entry Reason" row
      And clicks the "Search" button
    Then the search results should contain "Lagume"
    Then close the browser

  Scenario: Search by Current Location
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Intake" from record type dropdown
      And enters "Azkaban" in the "Advanced Search" "Current Location" vocab field
      And clicks on "Azkaban" from autocomplete options
      And clicks the "Search" button
    Then the search results should contain "Lagume"
    Then close the browser

  Scenario: Search by Field collection event name
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Intake" from record type dropdown
      And enters "textbook" in the "Advanced Search" "Field collection event name" field
      And clicks the "Search" button
    Then the search results should contain "Lagume"
    Then close the browser

  Scenario: Search by Edit Date
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Intake" from record type dropdown
      And enters today's date in the "Modified Date" field
      And clicks the "Search" button
    Then the search results should contain "Lagume"
    Then close the browser

  Scenario: Search by username
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Intake" from record type dropdown
      And enters username in the "Advanced Search" "Record last modified by" field
      And clicks the "Search" button
    Then the search results should contain "Lagume"
    Then close the browser

  #test2
  Scenario: Boolean field-based Search
    Given user is on the "Create New" page
      And selects the "Intake" radio button on the Create New page
      And clicks on the Create button
    Then the titlebar should contain "Intake"
      And enters "maSkArA" in the "Intake" "Intake Entry Number" field
      And enters "Jane Doe" in the "Intake" "Current Owner" vocab field
      And adds "Jane Doe" to "Local Persons"
      And clicks on the "Intake" "Entry Reason" field
    Then a drop down list should appear in the "Entry Reason" row
      And selects "Consideration" from dropdown in "Entry Reason" row
      And enters "testtest" in the "Intake" "Entry Note" field
      And clicks the "Save" button
    Then the record is successfully saved
    Given user is on the "Create New" page
      And selects the "Intake" radio button on the Create New page
      And clicks on the Create button
    Then the titlebar should contain "Intake"
      And enters "KaNoRrA" in the "Intake" "Intake Entry Number" field
      And enters "Jane Doe" in the "Intake" "Current Owner" vocab field
      And clicks on "Jane Doe" from autocomplete options
      And clicks on the "Intake" "Entry Reason" field
    Then a drop down list should appear in the "Entry Reason" row
      And selects "Consideration" from dropdown in "Entry Reason" row
      And enters "testtest" in the "Intake" "Packing Note" field
      And clicks the "Save" button
    Then the record is successfully saved
    Given user is on the "Create New" page
      And selects the "Intake" radio button on the Create New page
      And clicks on the Create button
    Then the titlebar should contain "Intake"
      And enters "AnkORrA" in the "Intake" "Intake Entry Number" field
      And enters "Jane Doe" in the "Intake" "Current Owner" vocab field
      And clicks on "Jane Doe" from autocomplete options
      And clicks on the "Intake" "Entry Reason" field
    Then a drop down list should appear in the "Entry Reason" row
      And selects "Loan" from dropdown in "Entry Reason" row
      And enters "testtest" in the "Intake" "Field collection note" field
      And clicks the "Save" button
    Then the record is successfully saved
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Intake" from record type dropdown
      And selects "any (OR)" from the "Field-based Search" drop down
      And enters "Jane Doe" in the "Advanced Search" "Current Owner" vocab field
      And clicks on "Jane Doe" from autocomplete options
      And clicks on the "Advanced Search" "Entry Reason" field
    Then a drop down list should appear in the "Entry Reason" row
      And selects "Consideration" from dropdown in "Entry Reason" row
      And clicks the "Search" button
    Then the search results should contain "maSkArA"
    Then the search results should contain "KaNoRrA"
    Then the search results should contain "AnkORrA"
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Intake" from record type dropdown
      And selects "all (AND)" from the "Field-based Search" drop down
      And enters "Jane Doe" in the "Advanced Search" "Current Owner" vocab field    
      And clicks on "Jane Doe" from autocomplete options
      And clicks on the "Advanced Search" "Entry Reason" field
    Then a drop down list should appear in the "Entry Reason" row
      And selects "Consideration" from dropdown in "Entry Reason" row
      And clicks the "Search" button
    Then the search results should contain "maSkArA"
    Then the search results should contain "KaNoRrA"
    Then the search results should not contain "AnkORrA"
    Then close the browser

  #Test3
  Scenario: Boolean and Keyword Search
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Intake" from record type dropdown
      And selects "any (OR)" from the "Field-based Search" drop down
      And enters "testtest" in the "keyword search" field
      And enters "Jane Doe" in the "Advanced Search" "Current Owner" vocab field
      And clicks on "Jane Doe" from autocomplete options
      And clicks on the "Advanced Search" "Entry Reason" field
    Then a drop down list should appear in the "Entry Reason" row
      And selects "Consideration" from dropdown in "Entry Reason" row
      And clicks the "Search" button
    Then the search results should contain "maSkArA"
    Then the search results should contain "KaNoRrA"
    Then the search results should contain "AnkORrA"
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Intake" from record type dropdown
      And selects "all (AND)" from the "Field-based Search" drop down
      And enters "testtest" in the "keyword search" field
      And enters "Jane Doe" in the "Advanced Search" "Current Owner" vocab field
      And clicks on "Jane Doe" from autocomplete options
      And clicks on the "Advanced Search" "Entry Reason" field
    Then a drop down list should appear in the "Entry Reason" row
      And selects "Consideration" from dropdown in "Entry Reason" row
      And clicks the "Search" button
    Then the search results should contain "maSkArA"
    Then the search results should contain "KaNoRrA"
    Then the search results should not contain "AnkORrA"
    Then close the browser
    

      
