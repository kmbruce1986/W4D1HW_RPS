require 'sinatra'
require 'sinatra/contrib/all'
require 'pry-byebug'

require_relative('models/rps')
also_reload('./models/*')

get '/play_hand/:hand1/:hand2' do
  game = Game.new(params[:hand1], params[:hand2])
  return game.play_hand
end
