# this is the Selenium driver
# you can change the browser to whatever you want
# as long as you have the driver for it

require_relative 'env'

def driver(url)
  @driver = Selenium::WebDriver.for :chrome
  @driver.get url
end