require 'pry'

Given(/^I visit the following "([^"]*)" and page loaded$/) do |url|
  @url = url
  # page is Capybara::Session it is what connect you to chrome/firefox or browser...
  page.visit @url
end

Then(/^I should see this content "([^"]*)"$/) do |content|
  @content = content
  page.has_content? @content
end

