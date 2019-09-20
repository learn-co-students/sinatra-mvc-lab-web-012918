require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'


class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/piglatinize' do
    @user_phrase = params[:user_phrase]
    # @user_text = PigLatinizer.newparams[:user_input]
    # @final = to_pig_latin(@user_text)
    erb :piglatinize
  end
end
