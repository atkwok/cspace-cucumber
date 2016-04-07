# Created by Jennifer Lynn Be on 11/21/2015

@functionality
Feature: Numeric Fields - QA Test Plan

  Scenario: User Tests Invalid Float Field Inputs
    Given user is on the "Create New" page
      And clicks on the Create button
      And enters "1234" in the "Cataloging" "Identification Number" field
      And enters "123a" in the "Cataloging" "Price - value" field
      And clicks the "Save" button
    Then the error message bar should appear with "Price - value: The number you have entered is invalid. Please try again."
      And enters "0.123a" in the "Cataloging" "Price - value" field
      And clicks the "Save" button
    Then the error message bar should appear with "Price - value: The number you have entered is invalid. Please try again."
      And enters "123.123.123" in the "Cataloging" "Price - value" field
      And clicks the "Save" button
    Then the error message bar should appear with "Price - value: The number you have entered is invalid. Please try again."
      And clicks the "Save" button
    Then the error message bar should appear with "Price - value: The number you have entered is invalid. Please try again."

  Scenario: User Tests Valid Float Field Inputs
      And enters ".1234" in the "Cataloging" "Price - value" field 
      And clicks the "Save" button
    Then the record is successfully saved
      And enters "0.1234" in the "Cataloging" "Price - value" field 
      And clicks the "Save" button
    Then the record is successfully saved
      And enters "1234.0" in the "Cataloging" "Price - value" field 
      And clicks the "Save" button
    Then the record is successfully saved
      And enters "1234" in the "Cataloging" "Price - value" field 
      And clicks the "Save" button
    Then the record is successfully saved
      And enters "0" in the "Cataloging" "Price - value" field 
      And clicks the "Save" button
    Then the record is successfully saved
      And enters "-9.123" in the "Cataloging" "Price - value" field 
      And clicks the "Save" button
    Then the record is successfully saved


  Scenario: User Tests Invalid Integer Field Inputs
      And enters "123.0" in the "Cataloging" "Number of Objects" field 
      And clicks the "Save" button
    Then the message "Number of Objects: The number you have entered is invalid. Please try again." should appear
      And enters "1abc" in the "Cataloging" "Number of Objects" field 
      And clicks the "Save" button
    Then the message "Number of Objects: The number you have entered is invalid. Please try again." should appear
      And clicks the "Save" button
    Then the message "Number of Objects: The number you have entered is invalid. Please try again." should appear


  Scenario: User Tests Valid Integer Field Inputs
      And enters "1234" in the "Cataloging" "Number of Objects" field
      And clicks the "Save" button
    Then the record is successfully saved
      And enters "0" in the "Cataloging" "Number of Objects" field
      And clicks the "Save" button
    Then the record is successfully saved
      And enters "-1234" in the "Cataloging" "Number of Objects" field
      And clicks the "Save" button
    Then the record is successfully saved


  Scenario: User Tests Multiple Invalid Fields
      And enters "123.0" in the "Cataloging" "Number of Objects" field 
      And clicks the "Save" button
    Then the message "Number of Objects: The number you have entered is invalid. Please try again." should appear
      And enters "123.123.123" in the "Cataloging" "Price - value" field 
      And clicks the "Save" button
    Then the error message bar should appear with "Number of Objects & Price - value: The number you have entered is invalid. Please try again."
