#Created by Forest Yang on 1/9/2016

@advancedsearch
Feature: Advanced Search - Place

  #Test1
  Scenario: Advanced Search Fields
    Given user is on the "Create New" page
      And selects the "Place" radio button on the Create New page
      And clicks on the Create button
    Then the titlebar should contain "Place"
      And enters "Conyay" in the "Place" "Display Name" field
      And enters "RealFrend" in the "Place" "Name" field
      And clicks on the "Place" "Status" field
    Then a drop down list should appear in the "Status" row
      And selects "Under Review" from dropdown in "Status" row
      And clicks on the "Place" "Language" field
    Then a drop down list should appear in the "Language" row 
      And selects "Japanese" from dropdown in "Language" row
      And clicks on the "Place" "Place type" field
    Then a drop down list should appear in the "Place type" row
      And selects "Borough" from dropdown in "Place type" row
      And enters "I love you honeybear" in the "Place" "Place note" field
      And enters "Travvy" in the "Place" "Owner" vocab field
      And adds "Travvy" to "Local Persons"
      And clicks the "Save" button
    Then the record is successfully saved
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Place" from record type dropdown
      And enters "Conyay" in the "Advanced Search" "Display Name" field
      And clicks the "Search" button 
    Then the search results should contain "Conyay"
    Then close the browser

  Scenario: Search by Name
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Place" from record type dropdown
      And enters "RealFrend" in the "Advanced Search" "Name" field
      And clicks the "Search" button
    Then the search results should contain "Conyay"
    Then close the browser

  Scenario: Search by Status
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Place" from record type dropdown
      And clicks on the "Advanced Search" "Status" field
    Then a drop down list should appear in the "Status" row
      And selects "Under Review" from dropdown in "Status" field
      And clicks the "Search" button
    Then the search results should contain "Conyay"
    Then close the browser

  Scenario: Search by Language
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search" 
      And selects "Place" from record type dropdown
      And clicks on the "Advanced Search" "Language" field
    Then a drop down list should appear in the "Language" row
      And selects "Japanese" from dropdown in "Language" row
      And clicks the "Search" button
    Then the search results should contain "Conyay"
    Then close the browser

  Scenario: Search by place type
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Place" from record type dropdown
      And clicks on the "Advanced Search" "Place type" field
    Then a drop down list should appear in the "Place type" row
      And selects "Borough" from dropdown in "Place type" row
      And clicks the "Search" button
    Then the search results should contain "Conyay"
    Then close the browser

  Scenario: Search by Place note
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Place" from record type dropdown
      And enters "I love you honeybear" in the "Advanced Search" "Place note" field
      And clicks the "Search" button
    Then the search results should contain "Conyay"
    Then close the browser

  Scenario: Search by owner
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Place" from record type dropdown
      And enters "Travvy" in the "Advanced Search" "Owner" vocab field
      And clicks on "Travvy" from autocomplete options
    Then the search results should contain "Conyay"
    Then close the browser

  Scenario: Search by Modified Date
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Place" from record type dropdown
      And enters today's date in the "Modified Date" field
      And clicks the "Search" button
    Then the search results should contain "Conyay"
    Then close the browser

  Scenario: Search by username
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Place" from record type dropdown
      And enters username in the "Advanced Search" "Record last modified by" field
      And clicks the "Search" button
    Then the search results should contain "Conyay"
    Then close the browser
