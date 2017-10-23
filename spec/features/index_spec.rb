feature 'when I visit the index page' do
   scenario 'I should be able to click on the pictures' do
    showpost
  end

   def showpost
     name = 'booloojis'
     description = 'An adventure'
     visit '/posts/new'
     fill_in 'post[caption]', with: name
     attach_file('post[image]', Rails.root + 'spec/fixtures/doggy.jpg')
     click_button('Create Post')
     visit('/')
     find("img[alt='Doggy']").click
     expect(page).to have_css("img[src*='doggy.jpg']")
   end
 end
