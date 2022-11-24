require 'rails_helper'

RSpec.feature 'Sign up', type: :feature do
  scenario 'User creates an account' do
    visit '/users/new'

    fill_in 'user_email', with: 'test@test.com'
    fill_in 'user_password', with: 'password!'

    click_button 'Sign up'

    expect(page).to have_text('Upload a new CSV:')
  end
end
