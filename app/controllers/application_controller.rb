# Use Sinatra

require './config/environment'
require './app/models/sample_model'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
 
  get '/'do
    erb:features
  end
  
  get '/whyquit' do
    erb:whyquit
  end
  
  get '/ourmethod' do
    erb:ourmethod
  end
  
  get '/login' do
    erb:login
  end
  
  get '/signup' do
    erb:signup
  end 
  
  get '/dashboard' do
    erb:dashboard
  end
  
  post '/dashboard' do
    @username=params[:username]
    erb:dashboard
  end
  
  get '/chatroom' do
    erb:chatroom
  end 
  
  post '/chatroom'do
    @region=params[:region]
    erb:chatroom
    
    @message=params[:message]
    erb:chatroom
  end
  
  get '/logout' do
    erb:logout 
  end 
end

