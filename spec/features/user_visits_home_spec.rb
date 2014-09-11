require 'spec_helper'

feature 'User visits homes', %{
  As a guest
  I want to go to index
  So I can see list of products

  Acceptance Criteria:
  * I must visit home url
} do

  scenario 'visits root url' do
    product = FactoryGirl.create(:product)
    visit store_index_path
    expect(page).to have_content(product.title)
    expect(page).to have_content(product.description)
    expect(page).to have_content(product.price)
  end
end
