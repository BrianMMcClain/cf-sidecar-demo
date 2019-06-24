require 'sinatra'
require 'httparty'
require 'json'

set :configURL, ENV["CONFIG_URL"]
listenPort = ENV["SIDECAR_PORT"]
set :loadedConfig, {}

set :port, listenPort

def refreshConfig
    puts "Refreshing config from #{settings.configURL}"
    response = HTTParty.get(settings.configURL)
    settings.loadedConfig = JSON.parse(response.body)
    puts "Config refreshed!"
end

configure do
    refreshConfig
end

get '/' do
    return settings.loadedConfig.to_json
end

get '/refresh' do
    refreshConfig
    status 200
    return settings.loadedConfig.to_json
end