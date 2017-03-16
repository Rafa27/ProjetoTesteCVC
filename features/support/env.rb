$LOAD_PATH << "../libs"

#Project gems
require 'cucumber'
require 'watir-webdriver'
require 'watir-webdriver/wait'
require 'rspec'
require 'magic_encoding'
require 'spreadsheet'
require 'csv'

#LAN Connection Info
require 'socket'

require 'utils/Utils'
require 'pages/Global/LoginPage'
require 'pages/Global/HomePage'

client = Selenium::WebDriver::Remote::Http::Default.new
client.timeout = 90

browser = Watir::Browser.new :chrome, :http_client => client
browser.goto "http://www.cvc.com.br/index.aspx"
browser.window.maximize
$browser = browser