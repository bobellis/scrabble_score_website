require('sinatra')
require('sinatra/reloader')
require('./lib/scrabble_score_new')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/score') do
  @score = params.fetch('word').scrabble_score_new()
  erb(:score)
end
