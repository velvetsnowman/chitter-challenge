# frozen_string_literal: true

require 'sinatra/base'
require 'sinatra/flash'
require './lib/message.rb'
# this is a chitter app - it lets your post messages to a webpage for others to see
class Chitter < Sinatra::Base
  enable :sessions
  register Sinatra::Flash

  get '/' do
    erb :index
  end

  post '/name' do
    session[:username] = params[:username]
    redirect '/homepage'
  end

  get '/homepage' do
    @username = session[:username]
    erb :homepage
  end

  run! if app_file == $PROGRAM_NAME
end