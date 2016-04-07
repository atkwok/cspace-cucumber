#Created by Forest Yang on 1/8/2016

@advancedsearch
Feature: Advanced Search - Work

  #Test1
  Scenario: Advanced Search Fields
    Given user is on the "Create New" page
      And selects the "Work" radio button on the Create New page
      And clicks on the Create button
    Then the titlebar should contain "Work"
      And enters "Carly" in the "Work" "Display Name" field
      And clicks on the "Work" "Language" field
    Then a drop down list should appear in the "Language" row
      And selects "Ancient Greek" from dropdown in "Language" row
      And clicks on the "Work" "Status" field
    Then a drop down list should appear in the "Status" field
      And selects "Complete" from dropdown in "Status" row
      And clicks on the "Work" "Work type" field
    Then a drop down list should appear in the "Work type" row
      And selects "Built" from dropdown in "Work type" row
      And enters "Rae" in the "Work" "Creator" vocab field
      And adds "Rae" to "Local Persons"
      And clicks the "Save" button
    Then the record is successfully saved
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Work" from record type dropdown
      And enters "Carly" in the "Advanced Search" "Display Name" field
      And clicks the "Search" button
    Then the search results should contain "Carly"
    Then close the browser

  Scenario: Search by language
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Work" from record type dropdown
      And clicks on the "Advanced Search" "Language" field
    Then a drop down list should appear in the "Language" row
      And selects "Ancient Greek" from dropdown in "Language" row
      And clicks the "Search" button
    Then the search results should contain "Carly"
    Then close the browser

  Scenario: Search by Status
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Work" from record type dropdown
      And clicks on the "Advanced Search" "Status" field
    Then a drop down list should appear in the "Language" row
      And selects "Complete" from dropdown in "Status" row
      And clicks the "Search" button
    Then the search results should contain "Carly"
    Then close the browser

  Scenario: Search by Work type
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Work" from record type dropdown
      And clicks on the "Advanced Search" "Work type" field
    Then a drop down list should appear in the "Work type" row
      And selects "Built" from dropdown in "Work type" row
      And clicks the "Search" button
    Then the search results should contain "Carly"
    Then close the browser

  Scenario: Search by Creator
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Work" from record type dropdown
      And enters "Rae" in the "Advanced Search" "Creator" vocab field
      And clicks on "Rae" from autocomplete options
      And clicks the "Search" button
    Then the search results should contain "Carly"
    Then close the browser

  Scenario: Search by Modified Date
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Work" from record type dropdown
      And enters today's date in the "Modified Date" field
      And clicks the "Search" button
    Then the search results should contain "Carly"
    Then close the browser

  Scenario: Search by username
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Work" from record type dropdown
      And enters username in the "Advanced Search" "Record last modified by" field
      And clicks the "Search" button
    Then the search results should contain "Carly"
    Then close the browser

  Scenario: Search by Modified Date
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Work" from record type dropdown
      And enters today's date in the "Modified Date" field
      And clicks the "Search" button
    Then the search results should contain "textbook"
    Then close the browser

  Scenario: Search by username
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Work" from record type dropdown
      And enters username in the "Advanced Search" "Record last modified by" field
      And clicks the "Search" button
    Then the search results should contain "textbook"
    Then close the browser
