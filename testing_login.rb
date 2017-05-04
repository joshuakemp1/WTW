require 'selenium-webdriver'

@email = 'joshuakemp85@gmail.com'
@password = 'XcJwzMxl5G9Q'

@home_url = 'https://unsplash.com/'
@login_link = '._1Ovdl'
@login_url = 'https://unsplash.com/login'
@email_input = '#user_email'
@password_input = '#user_password'
@login_button = 'input.btn-block-level'


@driver = Selenium::WebDriver.for :firefox
@driver.navigate.to @home_url

if @driver.find_element(:css, @login_link).displayed?
  puts 'I see the login button'
  puts 'clicking the login button!'
  sleep 3
end

@driver.find_element(:css, @login_link).click

if @driver.current_url == @login_url
  puts "We are on the login page! " + @driver.current_url
else
  puts "OH NO!!!..something broke!"
end

@driver.find_element(:css, @email_input).send_keys(@email)
@driver.find_element(:css, @password_input).send_keys(@password)
@driver.find_element(:css, @login_button).click






# @driver.find_element(:css, '.start_test').click
# else
#   puts "couldn't find the start button :-("
#   sleep 5
# end

# sleep 3

# @driver.quit
