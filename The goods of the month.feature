Feature: The goods of the month
  In order to inform the user better about the popular products
  As an administrator
  I want to see the "goods of the month" box
  
  Scenario: Displaying the "goods of the month" box
    Given I am on the home page
    When I go to the page of any product category
    Then I should see the slider-box over the products list
    And in this slider are 3 slides with most popular goods of the month of the selected category
    
  Scenario: Clicking on the "goods of the month" box
    Given I am on the page of a product category
    When I click the "goods of the month" box
    Then I should see the page of the product was on the slide at the moment of click
