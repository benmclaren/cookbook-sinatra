# the app.rb will act as the Router and the Controller

require "sinatra"
require "sinatra/reloader" if development?
require "pry-byebug"
require "better_errors"
configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = File.expand_path('..', __FILE__)
end

# this is the routing part
get '/' do
  # everything inside here is the contoller part
  'Hello world!'
end
