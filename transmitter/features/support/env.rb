require 'pry'
require 'aruba/api'
require 'aruba/cucumber'

$: << File.dirname(__FILE__) + "/../../lib"

# PROJECT_ROOT = File.join(File.dirname(__FILE__),'..','..')
# ENV['PATH'] = "#{File.join(PROJECT_ROOT,'lib')}#{File::PATH_SEPARATOR}#{ENV['PATH']}"


World(Aruba::Api)

