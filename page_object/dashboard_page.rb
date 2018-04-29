require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require "site_prism"

Capybara.default_driver = :selenium

class Dashboard < SitePrism::Page
  set_url "https://mentifi.hub3c.com/"
  element :dashboard_title, "div.page-title"
  element :dummy_title, "dummy"
end
