require_relative "../connection.rb"

class BasePage
  def initialize(driver)
    @driver = driver
  end

  def go_to_homepage
    @driver.navigate.to DriverConnection::LOGIN_URL
  end

  def get_page_title
    puts @driver.title
  end
end

driver = DriverConnection.new

base = BasePage.new(driver.driver_setup)
base.go_to_homepage
base.get_page_title
