require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the scrabble score path', {:type => :feature}) do
  it('processes the user entry and returns scrabble score') do
    visit('/')
    fill_in('word', :with => "apple")
    click_button('send')
    expect(page).to have_content('9')
  end
end 
