# simple environment for a simple test
# require everything

require 'selenium-webdriver'
require 'data_magic'
require 'yaml'
require 'require_all'
require 'test/unit'

require_relative 'utility'
require_relative '../Framework_Functions/testdatafunctions'
require_relative '../ObjectRepository/elements'
require_relative '../Data/test_data'

include TestData
include TestDataFunctions