require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
    erb :piglatinize
  end

  post '/piglatinize' do
    @piglatinized = PigLatinizer.new
    @final = @piglatinized.to_pig_latin(params[:user_phrase])
    erb :piglatinize
  end


end
