feature "visiting the page to create a comment" do
  scenario "it has a text-field to create new comment" do
    createpost
    visit('/posts/1')
    fill_in('comment[commenter]', :with => 'Say What!?')
    click_button('Create Comment')
  end

  def createpost
  name = "booloojis"
  description = "An adventure"
  visit '/posts/new'
  fill_in "post[caption]", with: name
  attach_file("post[image]", Rails.root + "spec/fixtures/doggy.jpg")
  click_button('Create Post')
  end
end
