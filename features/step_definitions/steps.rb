# === GIVEN ===
Given (/I am running tests/) do
    bool = true
    expect(bool).to be true
end

Given("I am signed in") do
  sign_in
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
  click_on(button_text)
end

When("I log in") do
  u = FactoryBot.create(:minimal_user)
  fill_in("Email", :with => u.email)
  fill_in("Password", :with => u.password)
  
  click_button('Log in')
end

When("An invalid user logs in") do
  fill_in("Email", :with => "NotAuser@email.com")
  fill_in("Password", :with => "Thisisnotapasswordatall")
  click_button('Log in')
end

When(/^I fill in "(.*)" with "(.*)"$/) do |field, value|
  case field
  when "number"
    fill_in("number", :with => value)
  end
end

When(/^I check on "(.*)"$/) do |checkbox|
  check(checkbox)
end

Then(/^I should see "(.*)"$/) do |content|
    has_text = page.has_text?(text)
    expect(has_text).to be true
end

# === THEN ===
Then(/^I should be on the (.*) Page$/) do |page_name|
  had_content = false
  case page_name
  when "Home"
    had_content = page.has_css?("h1:contains('Welcome')")
  when "Apply"
    had_content = page.has_content?("Apply")
  when "Login"
    had_content = page.has_css?("h2:contains('Log in')")
  when "Sign Up"
    had_content = page.has_content?("Sign up")
  end
  expect(had_content).to be true
end

Then(/^"(.*)" should be checked$/) do |checked_box|
  expect(page.has_checked_field?(checked_box)).to be true
end


# === FUNCTIONS ===
def sign_in
  visit new_user_session_path
  u = FactoryBot.create(:minimal_user)
  fill_in("user_email", :with => u.email)
  fill_in("user_password", :with => u.password)
  click_button('Log in')
end
