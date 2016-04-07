#Created by Forest Yang on 1/11/2016

@advancedsearch
Feature: Advanced Search - Person

  #Test1
  Scenario: Advanced Search Fields
    Given user is on the "Create New" page
      And selects the "Person" radio button on the Create New page
      And clicks on the Create button
    Then the titlebar should contain "Person"
      And enters "Fleet Foxes" in the "Person" "Display Name" field
      And clicks on the "Person" "Status" field
    Then a drop down list should appear in the "Status" row
      And selects "Accepted" from dropdown in "Status" row
      And enters "2011-01-01" in the "Person" "Birth Date" field
      And enters "2011-01-01" in the "Person" "Death Date" field
      And enters "Fetty Wap" in the "Person" "Group" field
      And enters "Trapanese" in the "Person" "Nationality" field
      And clicks on the "Person" "Gender" field
    Then a drop down list should appear in the "Gender" row
      And selects "Male" from dropdown in "Gender" row
      And enters "Emcee" in the "Person" "Occupation" field
      And enters "Banger" in the "Person" "School/Style" field
      And clicks the "Save" button
    Then the record is successfully saved
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Person" from record type dropdown
      And enters "Fleet Foxes" in the "Advanced Search" "Display Name" field
      And clicks the "Search" button
    Then the search results should contain "Fleet Foxes"
    Then close the browser

  Scenario: Search by Status
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Person" from record type dropdown
      And clicks on the "Advanced Search" "Status" field
    Then a drop down list should appear in the "Status" row
      And selects "Accepted" from dropdown in "Status" row
      And clicks the "Search" button
    Then the search results should contain "Fleet Foxes"
    Then close the browser

  Scenario: Search by Birth Date
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Person" from record type dropdown
      And enters "2011-01-01" in the "Advanced Search" "Birth Date" field
      And clicks the "Search" button
    Then the search results should contain "Fleet Foxes"
    Then close the browser

  Scenario: Search by Death Date
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Person" from record type dropdown
      And enters "2011-01-01" in the "Advanced Search" "Death Date" field
      And clicks the "Search" button
    Then the search results should contain "Fleet Foxes"
    Then close the browser

  Scenario: Search by Group
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Person" from record type dropdown
      And enters "Fetty Wap" in the "Advanced Search" "Group" field
      And clicks the "Search" button
    Then the search results should contain "Fleet Foxes"
    Then close the browser

  Scenario: Search by Occupation
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Person" from record type dropdown
      And enters "Emcee" in the "Advanced Search" "Occupation" field
      And clicks the "Search" button
    Then the search results should contain "Fleet Foxes"
    Then close the browser

  Scenario: Search by Nationality
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Person" from record type dropdown
      And enters "Trapanese" in the "Advanced Search" "Nationality" field
      And clicks the "Search" button
    Then the search results should contain "Fleet Foxes"
    Then close the browser

  Scenario: Search by Gender
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Person" from record type dropdown
      And clicks on the "Advanced Search" "Gender" field
    Then a drop down list should appear in the "Gender" row
      And selects "Male" from dropdown in "Gender" row
      And clicks the "Search" button
    Then the search results should contain "Fleet Foxes"
    Then close the browser

  Scenario: Search by School/Style
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Person" from record type dropdown
      And enters "Banger" in the "Advanced Search" "School/Style" field
      And clicks the "Search" button
    Then the search results should contain "Fleet Foxes"
    Then close the browser

  Scenario: Search by Modified Date
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Person" from record type dropdown
      And enters today's date in the "Modified Date" field
      And clicks the "Search" button
    Then the search results should contain "Fleet Foxes"
    Then close the browser

  Scenario: Search by username
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Person" from record type dropdown
      And enters username in the "Advanced Search" "Record last modified by" field
      And clicks the "Search" button
    Then the search results should contain "Fleet Foxes"
    Then close the browser

  #Test2
  Scenario: Boolean field-based search
    Given user is on the "Create New" page
      And selects the "Person" radio button on the Create New page
      And clicks on the Create button
    Then the titlebar should contain "Person"
      And enters "Lorelai" in the "Person" "Display Name" field
      And enters "1975-07-05" in the "Person" "Birth Date" field
      And clicks on the "Person" "Gender" field
    Then a drop down list should appear in the "Gender" row
      And selects "Female" from dropdown in "Gender" row
      And enters "testtest" in the "Person" "Name Notes" field
      And clicks the "Save" button
    Then the record is successfully saved
    Given user is on the "Create New" page
      And selects the "Person" radio button on the Create New page
      And clicks on the Create button
    Then the titlebar should contain "Person"
      And enters "Andrea" in the "Person" "Display Name" field
      And enters "1975-07-05" in the "Person" "Birth Date" field
      And clicks on the "Person" "Gender" field
    Then a drop down list should appear in the "Gender" row
      And selects "Female" from dropdown in "Gender" row
      And enters "testtest" in the "Person" "Biographical Note" field
      And clicks the "Save" button
    Then the record is successfully saved
    Given user is on the "Create New" page
      And selects the "Person" radio button on the Create New page
      And clicks on the Create button
    Then the titlebar should contain "Person"
      And enters "DD" in the "Person" "Display Name" field
      And enters "1975-07-05" in the "Person" "Birth" field
      And clicks on the "Person" "Gender" field
    Then a drop down list should appear in the "Gender" row
      And selects "Male" from dropdown in "Gender" row
      And enters "textbook" in the "Person" "Name Notes" field
      And clicks the "Save" button
    Then the record is successfully saved
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search" 
      And selects "Person" from record type dropdown
      And selects "any (OR)" from the "Field-based Search" drop down
  #should automatically go in earliest.. i think
      And enters "1975-06-05" in the "Advanced Search" "Birth Date" field
      And clicks on the "Advanced Search" "Gender" field
    Then a drop down list should appear in the "Gender" row
      And selects "Male" from dropdown in "Gender" row
      And clicks the "Search" button
    Then the search results should contain "Lorelai"
    Then the search results should contain "Andrea"
    Then the search results should contain "DD"
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Person" from record type dropdown
      And selects "all (AND)" from the "Field-based Search" drop down
      And enters "1975-06-06" in the "Advanced Search" "Birth Date" field
      And clicks on the "Advanced Search" "Gender" field
    Then a drop down list should appear in the "Gender" row
      And selects "Female" from dropdown in "Gender" row
      And clicks the "Search" button
    Then the search results should contain "Lorelai"
    Then the search results should contain "Andrea"
    Then the search results should not contain "DD"
    Then close the browser

  #Test3
  Scenario: Boolean and Keyword Search
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Person" from record type dropdown
      And selects "any (OR)" from the "Field-based Search" drop down
      And enters "testtest" in the "keyword search" field
      And enters "1975-06-05" in the "Advanced Search" "Birth Date" field
      And clicks on the "Advanced Search" "Gender" field
    Then a drop down list should appear in the "Gender" row
      And selects "Male" from dropdown in "Gender" row
      And clicks the "Search" button
    Then the search results should contain "Lorelai"
    Then the search results should contain "Andrea"
    Then the search results should not contain "DD"
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Person" from record type dropdown
      And selects "all (AND)" from the "Field-based Search" drop down
      And enters "textbook" in the "keyword search" field
      And enters "1975-06-05" in the "Advanced Search" "Birth Date" field
      And clicks on the "Advanced Search" "Gender" field
    Then a drop down list should appear in the "Gender" row
      And selects "Male" from dropdown in "Gender" row
      And clicks the "Search" button
    Then the search results should not contain "Lorelai"
    Then the search results should not contain "Andrea"
    Then the search results should contain "DD"
    Then close the browser





