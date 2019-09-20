require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @text = params[:user_phrase]

    piggy = PigLatinizer.new
    @text = piggy.to_pig_latin(@text)
    erb :user_to_pig
  end
end
