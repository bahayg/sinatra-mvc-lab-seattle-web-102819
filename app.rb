require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        @piglatinized_text = PigLatinizer.new.piglatinize_words(params[:user_text])
        erb :results
    end

end
