Feature: Sign in
  Everybody wants to be able to sign in to BrowserStack

  Scenario: User signs in with valid credentials
    Given I am on the sign in page
    When I try to sign in with valid credentials
    Then I should be successfully signed in