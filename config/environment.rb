ENV['SINATRA_ENV'] ||= "development" #telling Sinatra it should use "development" environment for both shotgun and testing suite

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])
configure :development do
    set :database, 'sqlite3:db/database.db'
end

require './app'