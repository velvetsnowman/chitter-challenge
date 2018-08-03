# frozen_string_literal: true

require 'sinatra/base'
require 'sinatra/flash'
require 'uri'
require './lib/chitter.rb'
# this is a chitter app - it lets your post messages to a webpage for others to see
class Chitter < Sinatra::Base
  enable :sessions
  register Sinatra::Flash

  get '/' do
    "Salut toi"
  end

  run! if app_file == $PROGRAM_NAME
end
