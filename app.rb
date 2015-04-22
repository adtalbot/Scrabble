require('sinatra')
require('sinatra/reloader')
require('./lib/scrabble')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/word_score') do
  @word_score = params.fetch('word_score').scrabble()
  erb(:word_score)
end
