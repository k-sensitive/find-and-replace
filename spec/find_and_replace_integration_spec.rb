require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the find and replace path', {:type => :feature}) do
  it('replaces instances of a word within a phrase') do
    visit ('/')
    fill_in('phrase', :with => 'Hello World')
    fill_in('to_replace', :with => 'world')
    fill_in('word', :with => 'universe')
    click_button('Replace')
    expect(page).to have_content("hello universe")
  end
end
