#Created by Forest Yang on 1/11/2016

@advancedsearch
Feature: Advanced Search - Organization

  #Test1
  Scenario: Advanced Search Fields
    Given user is on the "Create New" page
      And selects the "Organization" radio button on the Create New page
      And clicks on the Create button
    Then the titlebar should contain "Organization"
      And enters "D'Angelo" in the "Organization" "Display Name" field
      And enters "2011-01-01" in the "Organization" "Foundation Date" field
      And enters "2011-01-01" in the "Organization" "Dissolution Date" field
      And enters "Valkyries" in the "Organization" "Group" field
      And enters "Ride" in the "Organization" "Function" field
      And clicks on the "Organization" "Status" field
    Then a drop down list should appear in the "Status" row
      And selects "Under Review" from dropdown in "Status" row
      And enters "textbook" in the "Organization" "Foundation Place" field
      And clicks the "Save" button
    Then the record is successfully saved
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Organization" from record type dropdown
      And enters "D'Angelo" in the "Advanced Search" "Display Name" field
      And clicks the "Search" button
    Then the search results should contain "D'Angelo"
    Then close the browser

  Scenario: Search by Foundation Date
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Organization" from record type dropdown
      And enters "2011-01-01" in the "Advanced Search" "Foundation Date" field
      And clicks the "Search" button
    Then the search results should contain "D'Angelo"
    Then close the browser

  Scenario: Search by Dissolution Date
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Organization" from record type dropdown
      And enters "2011-01-01" in the "Advanced Search" "Dissolution Date" field
      And clicks the "Search" button
    Then the search results should contain "D'Angelo"
    Then close the browser

  Scenario: Search by Group
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Organization" from record type dropdown
      And enters "Valkyries" in the "Advanced Search" "Group" field
      And clicks the "Search" button
    Then the search results should contain "D'Angelo"
    Then close the browser

  Scenario: Search by Function
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Organization" from record type dropdown
      And enters "Ride" in the "Advanced Search" "Function" field
      And clicks the "Search" button
    Then the search results should contain "D'Angelo"
    Then close the browser

  Scenario: Search by Status
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Organization" from record type dropdown
      And clicks on the "Advanced Search" "Status" field
    Then a drop down list should appear in the "Status" row
      And selects "Under Review" from dropdown in "Status" row
      And clicks the "Search" button
    Then the search results should contain "D'Angelo"
    Then close the browser

  Scenario: Search by Foundation place
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Organization" from record type dropdown
      And enters "textbook" in the "Advanced Search" "Foundation Place" field
      And clicks the "Search" button
    Then the search results should contain "D'Angelo"
    Then close the browser

  Scenario: Search by Modified Date
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Organization" from record type dropdown
      And enters today's date in the "Modified Date" field
      And clicks the "Search" button
    Then the search results should contain "D'Angelo"
    Then close the browser

  Scenario: Search by username
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Organization" from record type dropdown
      And enters username in the "Advanced Search" "Record last modified by" field
      And clicks the "Search" button
    Then the search results should contain "D'Angelo"
    Then close the browser

  Scenario: search by partial
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Organization" from record type dropdown
      And enters "textb*" in the "Advanced Search" "Foundation Place" field
      And clicks the "Search" button
    Then the search results should contain "D'Angelo"
    Then close the browser


  #Test2
  Scenario: 
    Given user is on the "Create New" page
      And selects the "Organization" radio button on the Create New page
      And clicks on the Create button
    Then the titlebar should contain "Organization"
      And enters "Endless Ennui" in the "Organization" "Display Name" field
      And enters "1975-07-05" in the "Organization" "Foundation Date" field
      And clicks on the "Organization" "Status" field
    Then a drop down list should appear in the "Status" row
      And selects "Accepted" from dropdown in "Status" row
      And enters "testtest" in the "Organization" "Foundation Place"
      And clicks the "Save" button
    Then the record is successfully saved
    Given user is on the "Create New" page
      And selects the "Organization" radio button on the Create New page
      And clicks on the Create button
    Then the titlebar should contain "Organization"
      And enters "Pedestrian at Best" in the "Organization" "Display Name" field
      And enters "1975-07-05" in the "Organization" "Foundation Date" field
      And clicks on the "Organization" "Status" field
    Then a drop down list should appear in the "Status" row
      And selects "Accepted" from dropdown in "Status" row
      And enters "testtest" in the "Organization" "Foundation Place"
      And clicks the "Save" button
    Then the record is successfully saved
    Given user is on the "Create New" page
      And selects the "Organization" radio button on the Create New page
      And clicks on the Create button
    Then the titlebar should contain "Organization"
      And enters "Courtney Barnett" in the "Organization" "Display Name" field
      And enters "1975-07-05" in the "Organization" "Foundation Date" field
      And clicks on the "Organization" "Status" field
    Then a drop down list should appear in the "Status" row
      And selects "Rejected" from dropdown in "Status" row
      And enters "testtest" in the "Organization" "Foundation Place"
      And clicks the "Save" button
    Then the record is successfully saved
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Organization" from record type dropdown
      And selects "any (OR)" from the "Field-based Search" drop down
      And enters "1975-06-05" in the "Advanced Search" "Foundation Date" field
      And clicks on the "Advanced Search" "Status" field
    Then a drop down list should appear in the "Status" row
      And selects "Rejected" from dropdown in "Status" row
      And clicks the "Search" button
    Then the search results should contain "Endless Ennui"
    Then the search results should contain "Pedestrian at Best"
    Then the search results should contain "Courtney Barnett"
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Organization" from record type dropdown
      And selects "and (ALL)" from boolean dropdown
      And enters "1975-06-05" in the "Advanced Search" "Foundation Date" field
      And clicks on the "Advanced Search" "Status" field
    Then a drop down list should appear in the "Status" row
      And selects "Accepted" from dropdown in "Status" row
      And clicks the "Search" button
    Then the search results should contain "Endless Ennui"
    Then the search results should contain "Pedestrian at Best"
    Then the search results should not contain "Courtney Barnett"
    Then close the browser

  #Test3
  Scenario: Boolean and Keyword Search
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And enters "testtest" in the "keyword search" field
      And selects "Organization" from record type dropdown
      And selects "any (OR)" from the "Field-based Search" drop down
      And enters "1975-06-05" in the "Advanced Search" "Foundation Date" field
      And clicks on the "Advanced Search" "Status" field
    Then a drop down list should appear in the "Status" row
      And selects "Rejected" from dropdown in "Status" row
      And clicks the "Search" button
    Then the search results should contain "Endless Ennui"
    Then the search results should contain "Pedestrian at Best"
    Then the search results should contain "Courtney Barnett"
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And enters "testtest" in the "keyword search" field
      And selects "Organization" from record type dropdown
      And selects "all (AND)" from the "Field-based Search" drop down
      And enters "1975-06-05" in the "Advanced Search" "Foundation Date" field
      And clicks on the "Advanced Search" "Status" field
    Then a drop down list should appear in the "Status" row
      And selects "Accepted" from dropdown in "Status" row
      And clicks the "Search" button
    Then the search results should contain "Endless Ennui"
    Then the search results should contain "Pedestrian at Best"
    Then the search results should not contain "Courtney Barnett"
    Then close the browser




