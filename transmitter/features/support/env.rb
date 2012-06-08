$: << File.dirname(__FILE__) + "/../../lib"

require 'aruba/api'
require 'aruba/cucumber'

World(Aruba::Api)

