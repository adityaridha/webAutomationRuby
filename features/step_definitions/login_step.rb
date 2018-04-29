require_relative "../../page_object/login_page.rb"
require_relative "../../page_object/dashboard_page.rb"

Given(/^I navigate to the hub homepage$/) do
  @home = Login.new
  @home.load
end

When(/^I fill email with "(.*?)" and password with "(.*?)"$/) do |username, password|
  @home.log_in(username, password)
end

Then(/^Login success$/) do
  @dashboard = Dashboard.new
  expect(@dashboard).to be_displayed
  expect(@dashboard).to have_dashboard_title
end
