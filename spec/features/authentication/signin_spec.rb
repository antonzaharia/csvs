require 'rails_helper'

RSpec.feature 'Sign in', type: :feature do
  before do
    User.create(email: 'test@test.com', password: 'password!')
  end
  scenario 'User signs in to existing account' do
    visit '/sessions/new'

    fill_in 'user_email', with: 'test@test.com'
    fill_in 'user_password', with: 'password!'

    click_button 'Sign in'

    expect(page).to have_text('Upload a new CSV:')
  end
end
