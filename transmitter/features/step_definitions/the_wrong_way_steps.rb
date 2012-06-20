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

Then /^the service should be called with$/ do |string|
  all_output.should include string.strip!
end

Then /^the service should be called with valid json$/ do
  JSON.parse(all_output)
end

Then /^the json should contain only passing results$/ do
  results = JSON.parse(all_output, :symbolize_names => true)
  results.each do |feature|
    feature[:elements].each do |scenario|
      scenario[:steps].each do |step|
        step[:result][:status].should == 'passed'
      end
    end
  end
end
