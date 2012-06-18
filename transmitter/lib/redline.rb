require 'cucumber/formatter/json'
require 'cucumber/formatter/io'
require 'gherkin/formatter/argument'

module Cucumber
  module Formatter
    class Redline < Cucumber::Formatter::Json
      include Io
      def initialize(step_mother, io, options)
        @io = ensure_io(io, "json")
        super(step_mother, @io, options)
      end
    end
  end
end
