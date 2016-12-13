Feature: “5% discount on the goods of the month” action
  In order to urge the user to make a purchase effectively
  As an administrator
  I want the goods of the month to be with 5% discount
  
  Scenario: Displaying the box informs about the action
    Given I am on the home page
    When I click the flashing "5% discount..." box 
    Then I should see the page with the goods of the month
    
  Scenario: Displaying the discounts
    Given I am on the home page
    And go to any product category page
    And click an item in the "goods of the month" box
    Then I should see the actual product price with 5% discount near the darkened regular price on the product page
    
  Scenario: Action in action
    Given I am on the page of the particular product of the month
    When I click the "Купить!" button
    Then I should see the confirmed window where the product price is specified with 5% discount
    When I confirm the purchase
    And fill out the form with the following data
      | Имя            | Иван                |
      | Фамилия        | Иванов              |
      | Email          | supername@i.ua      |
      | Телефон        | 123456789           |
      | Адрес          | Шевченка 255, 255   |
      | Город          | Корк                |
    And click the "Далее" button
    Then I should see the "Спасибо за покупку! Наш менеджер свяжется с Вами в ближайшее время." message
    And a new entry is created with the price decreased by the 5% in the database
