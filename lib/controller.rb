require 'gossip'

class ApplicationController < Sinatra::Base
  get '/' do
    erb :index
    
  end

 #Creation d'un nouveau gossip
  get '/gossips/new/' do
    erb:new_gossip
  end
 
 #Traitement du formulaire pour la creation de gossip
  post '/gossips/new/' do
    Gossip.new(params["gossip_content"], params["gossip_author"]).save
    redirect '/'
  end
end


