class Login < SitePrism::Page

	set_url "https://live.hub3c.com"
  element :username_field, "input#Email"
  element :password_field, "input#Password"
  element :register_link, :xpath, "//a[contains(text(),'Reg')]"
  element :forgot_password_link, :xpath, "//a[contains(text(),'Forgot')]"

  def log_in(username, password)
    username_field.set(username)
    password_field.set(password)
    puts ("this is the result : #{register_link.text}")
    puts ("this is the result : #{forgot_password_link.text}")
    click_on('Log in')
  end


end
