package com.yllu.cucumber_pw.steps;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class LoginSteps {

    private String message;
    private boolean isLoggedIn;

    @Given("the user navigates to the login page")
    public void theUserNavigatesToTheLoginPage() {
        System.out.println("User navigated to the login page.");
        isLoggedIn = false; // Initial state
    }

    @When("the user enters valid credentials")
    public void theUserEntersValidCredentials() {
        System.out.println("User entered valid credentials.");
        isLoggedIn = true; // Simulate successful login
    }

    @Then("the user should see a welcome message")
    public void theUserShouldSeeAWelcomeMessage() {
        if (isLoggedIn) {
            message = "Welcome!";
        } else {
            message = "Login failed.";
        }
        System.out.println("Message displayed: " + message);
        assertEquals("Welcome!", message); // Validate the message
    }
}
