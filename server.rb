require 'sinatra'
require 'haml'

get '/' do
  haml :index
end

post '/eject' do
  if params[:dev] == ''
    spawn('eject')
  else
    spawn("eject #{params[:dev].gsub(/`|>|<|\|/, '')}")
  end
  spawn("eject")
  redirect '/'
end
