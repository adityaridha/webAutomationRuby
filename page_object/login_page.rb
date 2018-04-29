require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'

Capybara.default_driver = :selenium

class Login < SitePrism::Page

	set_url "https://live.hub3c.com"
  element :username_field, "input#Email"
  element :password_field, "input#Password"

  def log_in(username, password)
    # Capybara command
    # fill_in('Email', with: username)
    # fill_in('Password', with: password)

    # Siteprism command
    username_field.set(username)
    password_field.set(password)
    click_on('Log in')
  end

  def test_connection
    puts "connect to login model"
  end

  def verify_login
    expect(page).to have_button('Save')
  end


end

login = Login.new
login.test_connection