Given(/I am on the (.*) Page/) do |name|
    case name
    when "Home"
        visit home_page_path
    when "Login"
        visit login_path
    end
end


When(/I click on (.*)/) do |button_text|
  click_button(button_text)
end

When(/"(.*)" logs in/) do |email|
  fill_in("username", :with => email)
  
  case email
  when "test@email.com"
    fill_in("password", :with => 'password123')
  when "admin@test.com"
    fill_in("password", :with => "adminpassword")
  end
end


Then(/I should see "(.*)"/) do |text|
  has_text = page.has_content?(text)
  expect(has_text).to be true
end

Then(/I should be on the (.*) Page/) do |name|
  case name
  when "Home"
    page.has_content?("Something only on home page")
  when "Login"
    page.has_content?("Something only on login page")
  when "Floor Plans"
    page.has_content?("Something only on floor plans page")
  end
end
