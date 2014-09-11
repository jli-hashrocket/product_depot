require 'spec_helper'
require 'database_cleaner'

# Clean database before each test
DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean

feature 'User signs up', %{
  As a guest
  I want to register
  So I can buy products

  Acceptance Criteria:
  * I must provide a name
  * I must provide a password
  * I must confirm the password
} do

  scenario 'with valid and required attributes' do
    user = FactoryGirl.create(:user)
    visit new_user_path
    fill_in 'Name', with: 'Some Guy'
    fill_in '* Password', with: user.password, exact: true
    fill_in '* Password confirmation', with: user.password, exact: true
    click_on 'Create User'
    expect(page).to have_content('Please Log In')
  end

  scenario 'with mismatched passwords' do
    user = FactoryGirl.create(:user)
    visit new_user_path
    fill_in 'Name', with: 'Some Guy'
    fill_in '* Password', with: 'Password', exact: true
    fill_in '* Password confirmation', with: 'Password1', exact: true
    click_on 'Create User'
    expect(page).to have_content("doesn't match Password")
  end

end
