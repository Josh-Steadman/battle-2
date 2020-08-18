require 'sinatra'

configure(:development) { set :session_secret, "keeps cute cat alive" }

get '/' do
  "Hello!!"
end

get '/secret' do
  'its a secret'
end

get '/battle_plan' do
  'archers at the back'
end

get '/location' do
  'Asda car park!'
end

get '/random-cat' do
    @names= ["Amigo", "Oscar", "Viking"].sample
    erb(:index)
end

post '/named-cat' do
    p params
    @name = params[:name]
    erb(:index)
end

get '/form' do
  erb(:form)
end