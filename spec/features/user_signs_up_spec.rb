require 'spec_helper'

feature 'User signs up', %{
  As a guest
  I want to register
  So I can buy products

  Acceptance Criteria:
  * I must provide a name
  * I must provide a password
  * I must confirm the password
} do
  let(:name) {name = 'Jeff Li'}
  let(:password) {password = 'creature'}
  let(:password_confirmation) {password_confirmation = 'creature'}

  scenario 'with valid and required attributes' do
    visit new_users_path
  end
end
