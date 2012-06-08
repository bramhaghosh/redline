$: << File.dirname(__FILE__) + "/../../lib"

# ENV['PATH'] = "#{File.expand_path(File.dirname(__FILE__) + '/../../bin')}#{File::PATH_SEPARATOR}#{ENV['PATH']}"

puts "Path is #{ENV['PATH']}"

require 'aruba/api'
require 'aruba/cucumber'

World(Aruba::Api)

