require 'spec_helper'

feature 'User logs in', %{
  As a member
  I want to log in
  So I can buy products

  Acceptance Criteria:
  * I must provide a name
  * I must provide a password
} do

  scenario 'with correct username and password' do
    user = FactoryGirl.create(:user)
    visit login_path
    fill_in 'Name', with: user.name
    fill_in 'Password', with: user.password
    click_on 'Login'
    expect(page).to have_content('Welcome')
  end

  scenario 'with mismatched passwords' do
    user = FactoryGirl.create(:user)
    visit login_path
    fill_in 'Name', with: user.name
    fill_in 'Password', with: 'blahblah'
    click_on 'Login'
    expect(page).to have_content("doesn't match Password")
  end

end
