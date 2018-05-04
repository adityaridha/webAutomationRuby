After do |scenario|

    visit('https://mentifi.hub3c.com/Account/SignOut')
    
    if scenario.failed?
        puts "test failed"
    elsif scenario.passed?
        puts "test pass"
    end

  end

