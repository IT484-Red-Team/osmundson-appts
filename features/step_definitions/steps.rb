Given(/I am on the (.*) Page/) do |name|
  case name
  when "Home"
      visit root_path
  when "Login"
      visit user_session_path
  when "Apartments"
      visit "/apartments/index"
  end
end

Given("I am signed in") do
  visit new_user_session_path
  fill_in("user_email", :with => '1234@gmail.com')
  fill_in("user_password", :with => 'password')
  click_button('Log in')
end


When(/I click on \"(.*)\"/) do |button_text|
  click_link(button_text)
end

When(/\"(.*)\" logs in/) do |email|
  fill_in("user_email", :with => email)
  
  case email
  when "1234@email.com"
    fill_in("user_password", :with => 'password')
  when "admin@test.com"
    fill_in("user_password", :with => "adminpassword")
  when "InvalidUser@email.com"
    fill_in("user_password", :with => "NotaPasswordForSure")
  end
  
  
end


Then(/I should see "(.*)"/) do |text|
  has_text = page.has_content?(text)
  expect(has_text).to be true
end

Then(/I should be on the (.*) Page/) do |name|
  had_content = false
  case name
  when "Home"
    had_content = page.has_content?("Something only on home page")
  when "Apply"
    had_content = page.has_content?("Apply")
  when "Login"
    had_content = page.has_css?("h2:contains('Log in')")
  when "Sign Up"
    had_content = find_button("Sign up").visible?
  when "Floor Plans"
    had_content = page.has_content?("Something only on floor plans page")
  end
  expect(had_content).to be true
end