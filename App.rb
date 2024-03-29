require "sinatra"
require 'yaml'

poems = YAML.load_file('poems.yml')

get '/' do 
    erb :index, locals: {poems: poems}
end

get '/poem/:id' do |id|
    poem = poems[id.to_i]
    erb :poem, locals: { poem: poem }
  end