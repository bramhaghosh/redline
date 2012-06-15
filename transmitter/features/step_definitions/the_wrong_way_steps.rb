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

Then /I require the Redline formatter$/ do
  append_to_file('features/support/env.rb', "require '../../lib/redline'")
end
