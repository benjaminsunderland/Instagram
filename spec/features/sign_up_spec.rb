feature 'when I sign up' do
  scenario 'it will be successful' do
    signup
  end

  scenario 'it will show an error if unsuccessful' do
    email = 'aaa'
    password = 'bbb'
    visit('/users/sign_up')
    fill_in 'user[email]', with: email
    fill_in 'user[password]', with: password
    fill_in 'user[password_confirmation]', with: 'bbb'
    click_button('Sign up')
    expect(page).to have_content('Please review the problems below:')
  end

  def signup
    email = 'ben@sunderland.eu.com'
    password = 'password'
    visit '/users/sign_up'
    fill_in 'user[email]', with: email
    fill_in 'user[password]', with: password
    fill_in 'user[password_confirmation]', with: password
    click_button('Sign up')
  end
end
