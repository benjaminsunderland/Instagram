feature 'visiting the page to create a post' do
  scenario 'it has a caption and image upload to create new post' do
    createpost
    expect(page).to have_css("img[src*='doggy.jpg']")
  end
end

def createpost
  caption = 'Doggy Adventure '
  visit '/posts/new'
  fill_in 'post[caption]', with: caption
  attach_file('post[image]', Rails.root + 'spec/fixtures/doggy.jpg')
  click_button('Create Post')
end
