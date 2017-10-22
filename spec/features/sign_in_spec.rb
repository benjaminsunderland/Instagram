feature 'When I sign in' do
  scenario 'it should come up with an error with an invalid login' do
    email = "ben@sanderland.eu.com"
    password = "password"
    visit '/users/sign_in'
    fill_in "user[email]", with: email
    fill_in "user[password]", with: password
    click_button('Log in')
    expect(page).to have_content('Invalid Email or password.')
  end

    scenario 'it should be successful' do
    email = "ben@sunderland.eu.com"
    password = "password"
    visit '/users/sign_in'
    fill_in "user[email]", with: email
    fill_in "user[password]", with: password
    click_button('Log in')
  end
end
