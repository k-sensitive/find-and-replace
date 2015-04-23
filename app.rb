require('sinatra')
require('sinatra/reloader')
require('./lib/find_and_replace')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/find_and_replace') do
  @phrase = params.fetch('phrase')
  @word = params.fetch('word')
  @to_replace = params.fetch('to_replace')
  @new_phrase = @phrase.find_and_replace(@to_replace, @word)
  erb(:find_and_replace)
end
