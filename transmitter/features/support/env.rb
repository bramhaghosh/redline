$: << File.dirname(__FILE__) + "/../.."
require 'require_all'

require_all 'lib'
require 'aruba/api'
require 'aruba/cucumber'

World(Aruba::Api)

