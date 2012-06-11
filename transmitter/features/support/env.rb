$: << File.dirname(__FILE__) + "/../../lib"

PROJECT_ROOT = File.join(File.dirname(__FILE__),'..','..')
ENV['PATH'] = "#{File.join(PROJECT_ROOT,'bin')}#{File::PATH_SEPARATOR}#{ENV['PATH']}"

puts "Path is #{ENV['PATH']}"

require 'aruba/api'
require 'aruba/cucumber'

World(Aruba::Api)

