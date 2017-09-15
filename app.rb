require('sinatra')
require('sinatra/relaoder')
also_reload('lib/**/*.rb')
require('./lib/word')
require('./lib/definition')

get("/") do
  @words = Word.all()
  erb(:index)
end

get('/words/new') do
  erb(:word)
end

get('/words') do
  @words = Word.all()
  erb(:index)
end

post("/words") do
  new_word = params.fetch("new_word")
  Word.new(new_word).save()
  @words = Word.all
  erb(:index)
end
