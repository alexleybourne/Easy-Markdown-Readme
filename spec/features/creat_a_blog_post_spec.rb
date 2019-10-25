require 'rails_helper'

describe "Creating a blog post" do
    it 'saves and displays the resulting blog post' do
        #simulate user visiting the new form page
        visit '/blog_posts/new'

        fill_in 'Title', with: 'Hello'
        fill_in 'Body', with: 'This is a blog post'

        # Simulate submitting the form
        click_on 'Create Blog Post'

        #page is going to be the 'show' page for the new post
        expect(page).to have_content('Hello')
        expect(page).to have_content('This is a blog post')

    end
end