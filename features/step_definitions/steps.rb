Given (/I am running tests/) do
    bool = true
    expect(bool).to be true
end

Given("I am signed in") do
  visit new_user_session_path
  fill_in("user_email", :with => '1234@gmail.com')
  fill_in("user_password", :with => 'password')
  click_button('Log in')
end

Given(/I am on the (.*) Page/) do |name|
  case name
  when "Home"
      visit root_path
  when "Login"
      visit new_user_session_path
  when "Apartments"
      visit apartments_index_path
  when "New Apartments"
    visit apartments_new_path
  end
end

When(/^I click on "(.*)"$/) do |button_text|
  click_link(button_text)
end

# This test is not working properly for valid logins
When(/\"(.*)\" logs in/) do |email|
  fill_in("user_email", :with => email)
  
  case email
  when "1234@email.com"
    fill_in("user_password", :with => 'password')
  when "InvalidUser@email.com"
    fill_in("user_password", :with => "NotaPasswordForSure")
  end
end

When(/^I fill in "(.*)" with "(.*)"$/) do |field, value|
  case field
  when "number"
    fill_in("number", :with => value)
  end
end

Then(/^I should see "(.*)"$/) do |content|
    has_text = page.has_text?(text)
    expect(has_text).to be true
end

Then(/^I should be on the (.*) Page$/) do |page_name|
  had_content = false
  case page_name
  when "Home"
    had_content = page.has_content?("Welcome")
  when "Apply"
    had_content = page.has_content?("Apply")
  when "Login"
    had_content = page.has_css?("h2:contains('Log in')")
  when "Sign Up"
    had_content = page.has_content?("Sign up")
  end
  expect(had_content).to be true
end