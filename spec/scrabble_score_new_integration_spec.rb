require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the scrabble_score2 path', {:type => :feature}) do
  it('processes a word entered by user and returns the scrabble value') do
    visit('/')
    fill_in('word', :with => 'Quiz')
    click_button('Send')
    expect(page).to have_content('22')
  end
end
