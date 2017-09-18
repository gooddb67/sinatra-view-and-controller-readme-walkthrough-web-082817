require_relative 'config/environment'

 class App < Sinatra::Base

  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    original_string = params["string"]
    @reversed_string = original_string.reverse
    erb :reversed
  end

  get '/friends' do
      @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
    erb :friends
  end

  #  @@users = [
  #    {id: 1, name: "Terrance"},
  #    {id: 2, name: "Dave"}
   #
  #  ]

  # get '/' do
  #   "Hello World"
  # end
  #
  # get '/users' do
  #   @users = @@users
  #   erb :users
  # end
  #
  # get '/users/:id' do
  #   @users = []
  #   @@users.each do |user|
  #     if user[:id] == params["id"].to_i
  #       @users << user
  #     end
  #   end
  #   erb :users
  # end




end
