Given /^this step works$/ do
end

Given /^this step fails/ do
  1.should_equal 'foo'
end
