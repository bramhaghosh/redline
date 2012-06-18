require 'pry'
require 'aruba/api'
require 'aruba/cucumber'

$: << File.dirname(__FILE__) + "/../../lib"

PROJECT_ROOT = File.join(File.dirname(__FILE__),'..','..')
FIXTURE_ROOT = "#{PROJECT_ROOT}/fixtures"


World(Aruba::Api)

