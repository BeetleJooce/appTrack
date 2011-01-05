Given /^the following styleguides:$/ do |styleguides|
  Styleguide.create!(styleguides.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) styleguide$/ do |pos|
  visit styleguides_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following styleguides:$/ do |expected_styleguides_table|
  expected_styleguides_table.diff!(tableish('table tr', 'td,th'))
end
