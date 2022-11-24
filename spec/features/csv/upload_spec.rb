require 'rails_helper'

RSpec.feature 'Upload CSV', type: :feature do
  before do
    integration_signin
  end
  scenario 'User is able to upload a CSV' do
    attach_file 'file', Rails.root.join('spec', 'fixtures', 'files', 'valid.csv')
    click_button 'Save'

    expect(page).to have_text('All your csvs')

    csv = Csv.last
    click_link "csv-#{csv.id}"
    expect(page).to have_text('title')
    expect(page).to have_text('title2')
    expect(page).to have_text('title3')
  end
end

def integration_signin
  User.create(email: 'test@test.com', password: 'password!')
  visit '/sessions/new'

  fill_in 'user_email', with: 'test@test.com'
  fill_in 'user_password', with: 'password!'

  click_button 'Sign in'
end
