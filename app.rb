require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @user_phrase = params[:user_phrase]
    @piglatinized = PigLatinizer.new
    @piglatinized.to_pig_latin(@user_phrase)
    erb :piglatinize
  end

end
