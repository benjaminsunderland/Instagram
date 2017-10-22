feature 'when visiting the show page' do
  scenario 'a picture will be available to look at' do
    showpost
  end

  def showpost
    name = 'booloojis'
    description = 'An adventure'
    visit '/posts/new'
    fill_in 'post[caption]', with: name
    attach_file('post[image]', Rails.root + 'spec/fixtures/doggy.jpg')
    click_button('Create Post')
    visit('/posts/1')
    expect(page).to have_content('booloojis')
    expect(page).to have_css("img[src*='doggy.jpg']")
  end
end
