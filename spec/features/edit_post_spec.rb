feature 'When visiting the editing page' do
  scenario 'it is able to edit the picture' do
    editpost
  end

  def editpost
  name = "booloojis"
  description = "An adventure"
  visit '/posts/new'
  fill_in "post[caption]", with: name
  attach_file("post[image]", Rails.root + "spec/fixtures/doggy.jpg")
  click_button('Create Post')
  visit('/posts/1/edit')
  fill_in "post[caption]", with: "Edit Test"
  attach_file("post[image]", Rails.root + "spec/fixtures/doggy.jpg")
  click_button("Update Post")
  end
end
