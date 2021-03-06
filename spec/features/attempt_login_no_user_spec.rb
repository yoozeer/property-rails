require 'rails_helper'

feature 'attempt to login no user' do
  scenario 'fails' do
    visit new_user_session_path
    within('#new_user') do
      fill_in 'user_email', with: 'user@example.com'
      fill_in 'user_password', with: 'password'
    end
    click_button 'Log in'
    expect(page).to have_content 'Invalid email or password'
  end
end