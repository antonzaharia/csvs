require 'rails_helper'

RSpec.feature 'Upload invalid CSV', type: :feature do
  before do
    integration_signin
  end
  scenario 'User gets erros whenCSV is invalid' do
    upload_csv('valid.csv')
    upload_csv('valid.csv')

    expect(page).to have_text('Uuid has already been taken')
    
    upload_csv('invalid_date.csv')

    expect(page).to have_text('invalid date')
  end
end
