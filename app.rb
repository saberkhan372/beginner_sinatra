require 'bundler'
Bundler.require

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/results' do
    current_year = params[:birthyear]
    @future_age = 2030 - current_year.to_i
    erb :results
  end

  get '/browning' do
    erb :browning
  end

  get '/brearley' do
    return "<h1>Welcome to the Brealey School</h1>"
  end

  get '/dalton' do
    return "<h1>Welcome to the Dalton School</h1>"
  end

end
