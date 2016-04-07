#Created by Forest Yang on 12/30/2015

@advancedsearch
Feature: Advanced Search - Media Handling

#Decided to disinclude uploading an image, because an automated way of doing so seems.... dodgy

  #Test1
  Scenario: Advanced Search Fields
    Given user is on the "Create New" page
      And selects the "Media Handling" radio button on the Create New page
      And clicks on the Create button
    Then the titlebar should contain "Media Handling"
      And enters "hailstorm" in the "Media Handling" "Title" field
      And enters "685934" in the "Media Handling" "Identification Number" field
      And clicks on the "Media Handling" "Types" field
    Then a drop down list should appear in the "Types" row
      And selects "Dataset" from dropdown in "Types" row
      And enters "Lord Jesus" in the "Media Handling" "Creator" vocab field
      And adds "Lord Jesus" to "Local Persons"
      And clicks on the "Media Handling" "Languages" field
    Then a drop down list should appear in the "Languages" row
      And selects "Hebrew" from dropdown in "Languages" row
      And enters "0-0-0" in the "Media Handling" "Dates" field
      And enters "Lord Lucifer" in the "Media Handling" "Publisher" vocab field
      And adds "Lord Lucifer" to "Local Persons"
      And enters "Pearly Gates" in the "Media Handling" "Source" field
      And enters "Yahweh" in the "Media Handling" "Rights holder" vocab field
      And adds "Yahweh" to "Local Persons"
      # And uploads an image
      And enters "textbook" in the "Media Handling" "Subjects" field
      And clicks the "Save" button
    Then the record is successfully saved
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Media Handling" from record type dropdown
      And enters "685934" in the "Advanced Search" "Identification Number" field
      And clicks the "Search" button
    Then the search results should contain "685934"
    Then close the browser

  Scenario: Search by Title
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Media Handling" from record type dropdown    
      And enters "hailstorm" in the "Advanced Search" "Title" field
      And clicks the "Search" button
    Then the search results should contain "685934"
    Then close the browser

  Scenario: Search by Types
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Media Handling" from record type dropdown
      And clicks on the "Advanced Search" "Types" field
    Then a drop down list should appear in the "Types" row
      And selects "Dataset" from dropdown in "Types" row
      And clicks the "Search" button
    Then the search results should contain "685934"
    Then close the browser

  Scenario: Search by Creator
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Media Handling" from record type dropdown
      And enters "Lord Jesus" in the "Advanced Search" "Creator" vocab field
      And clicks on "Lord Jesus" from autocomplete options
      And clicks the "Search" button
    Then the search results should contain "685934"
    Then close the browser

  Scenario: Search by Languages
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Media Handling" from record type dropdown
      And clicks on the "Advanced Search" "Languages" field
    Then a drop down list should appear in the "Languages" row
      And selects "Hebrew" from dropdown in "Languages" row
      And clicks the "Search" button
    Then the search results should contain "685934"
    Then close the browser

  Scenario: Search by Dates
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Media Handling" from record type dropdown
      And enters "0-0-0" in the "Advanced Search" "Dates" field
      And clicks the "Search" button
    Then the search results should contain "685934"
    Then close the browser

  Scenario: Search by Publisher
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Media Handling" from record type dropdown
      And enters "Lord Lucifer" in the "Advanced Search" "Publisher" vocab field
      And clicks on "Lord Lucifer" from autocomplete options
      And clicks the "Search" button
    Then the search results should contain "685934"
    Then close the browser

  Scenario: Search by Source
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Media Handling" from record type dropdown
      And enters "Pearly Gates" in the "Advanced Search" "Title" field
      And clicks the "Search" button
    Then the search results should contain "685934"
    Then close the browser

  Scenario: Search by Rights holder
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Media Handling" from record type dropdown
      And enters "Yahweh" in the "Advanced Search" "Rights holder" vocab field
      And clicks on "Yahweh" from autocomplete options
      And clicks the "Search" button
    Then the search results should contain "685934"
    Then close the browser

  Scenario: Search by subjects
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Media Handling" from record type dropdown
      And enters "textbook" in the "Advanced Search" "Subjects" field
      And clicks the "Search" button
    Then the search results should contain "685934"
    Then close the browser

  Scenario: Search by Modified Date
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Media Handling" from record type dropdown
      And enters today's date in the "Modified Date" field
      And clicks the "Search" button
    Then the search results should contain "685934"
    Then close the browser

  Scenario: Search by username
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Media Handling" from record type dropdown
      And enters username in the "Advanced Search" "Record last modified by" field
      And clicks the "Search" button
    Then the search results should contain "685934"
    Then close the browser

  Scenario: textb**
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Media Handling" from record type dropdown
      And enters "textb*" in the "Advanced Search" "Subjects" field
      And clicks the "Search" button
    Then the search results should contain "685934"
    Then close the browser

  #Test2 
  Scenario: Boolean field-based search
    Given user is on the "Create New" page
      And selects the "Media Handling" radio button on the Create New page
      And clicks on the Create button
    Then the titlebar should contain "Media Handling"
      And enters "4639" in the "Media Handling" "Identification Number" field
      And enters "Jane Doe" in the "Media Handling" "Creator" vocab field
      And adds "Jane Doe" to "Local Persons"
      And enters "Jane Doe" in the "Media Handling" "Publisher" vocab field
      And clicks on "Jane Doe" from autocomplete options
      And enters "testtest" in the "Media Handling" "Coverage" field
      And clicks the "Save" button
    Then the record is successfully saved
    Given user is on the "Create New" page
      And selects the "Media Handling" radio button on the Create New page
      And clicks on the Create button
    Then the titlebar should contain "Media Handling"
      And enters "3246" in the "Media Handling" "Identification Number" field
      And enters "Jane Doe" in the "Media Handling" "Creator" vocab field
      And adds "Jane Doe" to "Local Persons"
      And enters "Jane Doe" in the "Media Handling" "Publisher" vocab field
      And clicks on "Jane Doe" from autocomplete options
      And enters "testtest" in the "Media Handling" "Coverage" field
      And clicks the "Save" button
    Then the record is successfully saved
    Given user is on the "Create New" page
      And selects the "Media Handling" radio button on the Create New page
      And clicks on the Create button
    Then the titlebar should contain "Media Handling"
      And enters "4245" in the "Media Handling" "Identification Number" field
      And enters "Jane Doe" in the "Media Handling" "Creator" vocab field
      And adds "Jane Doe" to "Local Persons"
      And enters "James Dean" in the "Media Handling" "Publisher" vocab field
      And clicks on "James Dean" from autocomplete options
      And enters "testtest" in the "Media Handling" "Coverage" field
      And clicks the "Save" button
    Then the record is successfully saved
      And clicks on link to "Advanced Search"
    Then the titlebar should contain "Advanced Search"
      And selects "Media Handling" from record type dropdown
      And selects "any (OR)" from the "Field-based Search" drop down
      And enters "Jane Doe" in the "Advanced Search" "Creator" vocab field
      And clicks on "Jane Doe" from autocomplete options
      And enters "Jane Doe" in the "Advanced Search" "Publisher" vocab field
      And clicks on "Jane Doe" from autocomplete options
      And clicks the "Search" button
    Then the search results should contain "4639"
    Then the search results should contain "3246"
    Then the search results should contain "4245"
      And clicks on link to "Advanced Search"
    Then the titlebar should contain "Advanced Search"
      And selects "Media Handling" from record type dropdown
      And And selects "all (AND)" from the "Field-based Search" drop down
      And enters "Jane Doe" in the "Advanced Search" "Creator" vocab field
      And clicks on "Jane Doe" from autocomplete options
      And enters "Jane Doe" in the "Advanced Search" "Publisher" vocab field
      And clicks on "Jane Doe" from autocomplete options
      And clicks the "Search" button
    Then the search results should contain "4639"
    Then the search results should contain "3246"
    Then the search results should not contain "4245"
    Then close the browser

  #Test3
  Scenario: Boolean and Keyword Search
    Given user is on the "My Collectionspace" page
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And enters "testtest" in the "keyword search" field
      And selects "Media Handling" from record type dropdown
      And selects "all (AND)" from the "Field-based Search" drop down
      And enters "Jane Doe" in the "Advanced Search" "Creator" vocab field
      And clicks on "Jane Doe" from autocomplete options
      And enters "Jane Doe" in the "Advanced Search" "Publisher" vocab field
      And clicks on "Jane Doe" from autocomplete options
      And clicks the "Search" button
    Then the search results should contain "4639"
    Then the search results should contain "3246"
    Then the search results should contain "4245"
      And clicks the "Advanced search" button
    Then the titlebar should contain "Advanced Search"
      And enters "testtest" in the "keyword search" field
      And selects "Media Handling" from record type dropdown
      And enters "all (AND)" from boolean dropdown
      And enters "Jane Doe" in the "Advanced Search" "Creator" vocab field
      And clicks on "Jane Doe" from autocomplete options
      And enters "Jane Doe" in the "Advanced Search" "Publisher" vocab field
      And clicks on "Jane Doe" from autocomplete options
      And clicks the "Search" button
    Then the search results should contain "4639"
    Then the search results should contain "3246"
    Then the search results should not contain "4245"
    Then close the browser
