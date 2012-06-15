require 'aruba/cucumber'
Given /^I have the formatter$/ do
  pending # express the regexp above with the code you wish you had
end

When /^it runs$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^it calls the service$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^it should not fail$/ do

end

Given /^a valid feature with step definitions$/ do
  step_file = 'dummy_steps.rb'
  path = File.expand_path("#{FIXTURE_ROOT}/#{step_file}")
  steps = File.read(path)
  write_file("features/step_definitions/#{step_file}", steps)
  feature_file = 'dummy.feature'
  path = File.expand_path("#{FIXTURE_ROOT}/#{feature_file}")
  feature = File.read(path)
  write_file("features/#{feature_file}", feature)
end

When /^I sucessfully run `cucumber \-f Redline::Transmitter'$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should not get any error messages$/ do
  pending # express the regexp above with the code you wish you had
end
