require("capybara/rspec")
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word counter path', {:type => :feature}) do
  it ('searches a sentence for a specific word and counts how many times it exists') do
    visit('/')
    fill_in('sentence', :with => 'The wolf ate the rabbit')
    fill_in('word', :with => 'wolf')
    click_button('Go')
    expect(page).to have_content("1")
  end
end
