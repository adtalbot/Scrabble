require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the scrabble path', {:type => :feature}) do
  it('processes the user word entry and returns the Scrabble score') do
    visit('/')
    fill_in('word_score', :with => 'e')
    click_button('Submit')
    expect(page).to have_content(1)
  end
end
