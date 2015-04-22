require('rspec')
require('./lib/scrabble_score_new')

describe('String#scrabble_score_new') do
  it('accepts a letter and returns the scrabble score value of that letter') do
    expect("a".scrabble_score_new()).to(eq(1))
  end

  it('accepts a word and returns the scrabble score value of that word') do
    expect("be".scrabble_score_new()).to(eq(4))
  end

  it('accepts words with upper and lower case characters') do
    expect("aPPleS".scrabble_score_new()).to(eq(10))
  end
end
