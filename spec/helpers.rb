module Helpers

  def integration_signin
    User.create(email: 'test@test.com', password: 'password!')
    visit '/sessions/new'

    fill_in 'user_email', with: 'test@test.com'
    fill_in 'user_password', with: 'password!'

    click_button 'Sign in'
  end

  def upload_csv(filename)
    visit '/csvs'
    attach_file 'file', Rails.root.join('spec', 'fixtures', 'files', filename)
    click_button 'Save'
  end
end
