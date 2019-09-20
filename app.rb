require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    latinize = PigLatinizer.new
    @latinized_text = latinize.piglatinize(params[:user_phrase])
    erb :results
  end

end
