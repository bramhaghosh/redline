Given /^I have the formatter$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^it calls the service$/ do
  pending # express the regexp above with the code you wish you had
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


Then /^I should not get any error messages$/ do
end

Then /I require the Redline::Transmitter formatter$/ do
  append_to_file('features/support/env.rb', "require '../../lib/transmitter'")
end
