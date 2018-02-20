require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    piglatinizer = PigLatinizer.new
    @latinized_words = piglatinizer.to_pig_latin(params[:user_phrase])
    erb :piglatinize
  end

end
