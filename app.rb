require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :index
  end
  
  get "/new" do
    
  end
  
  post "/puppy" do
    @puppy = Puppy.new(params[:name], params[:breed], params[:age])
    erb :display_puppy
  end
  
end
