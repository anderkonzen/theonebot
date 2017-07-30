require 'json'
require 'sinatra'
require 'sinatra/activerecord'

require './config/database.rb'

# load models
Dir["./app/models/*.rb"].each {|file| require file}

class App < Sinatra::Base
  get '/' do
    'Hello World!'
  end
end

