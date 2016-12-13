Feature: Welcome message to the logged in user
  In order to make more convenient user staying on the site
  As an user
  I want to see I am logged in or not in the page header
  
  Scenario: Just user
    Given I am on the home page
    Then I should see the "Регистрация" link and the "Вход в интернет-магазин" link in the page header
    
  Scenario: Logged in user
    Given I am logged in with
      | Login     | Tester1   |
      | Password  | Tester1   |
    Then I should see the "Здравствуйте, Tester1!" message and the "Выход" link in the page header
    
  Scenario: Logged out user
    Given I am logged in with
      | Login     | Tester1   |
      | Password  | Tester1   |
    When I click the "Выход" link
    Then I should see the "Регистрация" link and the "Вход в интернет-магазин" link in the page header
