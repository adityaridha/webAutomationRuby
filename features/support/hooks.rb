#Create a directory for storing snapshot
# dir_path = "/home/vchouhan/vijay_work/snapshot"
# unless Dir.exist?(dir_path)
#     Dir.mkdir(dir_path,0777)
#     puts "=========Directory is created at #{dir_path}"
# else
#     puts "=========Directory is exist at #{dir_path}"
# end

After do |scenario|

    page.save_screenshot('image_cucumber.png')

    visit('https://mentifi.hub3c.com/Account/SignOut')
    
    if scenario.failed?
        puts "test failed"
    elsif scenario.passed?
        puts "test pass"
    end

  end

