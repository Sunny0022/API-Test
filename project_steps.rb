# frozen_string_literal: true
require 'cucumber'
require 'httparty'

require "#{File.dirname(__FILE__)}/../../features/support/pages/projectspage"

Given(/^I Set the GET API request endpoints$/) do
  @pro = ProjectsPage.new
end

When(/^I Send query parameters to the endpoint$/) do
  p 'Setting the query parameters'
end

Then(/^I should see the response from server$/) do
  p @pro.getResponse
end

And(/^I should see the status code also$/) do

  p @pro.getMessage
  p @pro.getCode
  
end


And(/^I Set the request headers$/) do
  p 'Setting the request headers now'
end

Then(/^I should see the response body$/) do

  p @pro.getNewResponse
end

And(/^I should see the response code and message$/) do
  p @pro.getNewMessage

  p @pro.getNewCode

end
