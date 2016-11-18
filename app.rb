require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get ('/') do
  erb(:index)
end

get('/result') do
  @final_count = (params.fetch('input_sentence')).counter((params.fetch('input_word')))
end

# @input_sentence = params.fetch('input_sentence')
# @input_word = params.fetch('input_word')
# @final_count =  @input_sentence.counter(@input_word)
