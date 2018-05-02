require "cucumber"
require "capybara"

After do |scenario|

    visit('https://mentifi.hub3c.com/Account/SignOut')
    
    if scenario.failed?
        puts "#{scenario.title} failed"
    end
  end