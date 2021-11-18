﻿Feature: LoginTests
	In order to avoid silly mistakes
	As a math idiot
	I want to be told the sum of two numbers

#User want log in witch active account
@IB-129
@AUTO
Scenario: User wants to log in witch active account
	Given Registration by api
	When Accept registration by email
	And User input credentials on login page
	Then User is logged to account

Scenario: User login by API
	When Registration by api
	And Accept registration by email
	When User send correct data to log in
	And User input credentials on login page
	Then User is logged to account

@IB-201
@AUTO
Scenario: Login with incorrect data
	When user input incorrect data on login page
	Then user is not logged
	And error messages are displayed