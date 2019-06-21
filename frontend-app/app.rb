require 'sinatra'
require 'httparty'

get '/' do
    r = HTTParty.get("http://localhost:8888/application/production")
    return "Response: #{r.body}"
end

