require 'spec_helper'

describe User do
  let(:user) { FactoryGirl.create(:user, name: 'Jeff', password: 'creature', password: 'creature') }
  it { should have_valid(:name).when("Jeff") }
  it { should_not have_valid(:name).when(nil) }

  it { should have_valid(:password).when("creature") }
  it { should_not have_valid(:password).when(nil) }

  it { should have_valid(:password_confirmation).when("creature") }


end
