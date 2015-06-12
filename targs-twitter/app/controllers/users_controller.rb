get '/' do
  redirect '/users/register'
end

##INDEX
get '/users' do
  erb :users
end

##NEW
get '/users/register' do
  erb :registration_form
end

##CREATE
post '/users' do
  @user = User.new(
    :username => params[:username],
    :email => params[:email]
    )
  @user.password = params[:password]
  @user.save
  redirect "/users/#{@user.id}"
end

##SHOW
get '/users/:id' do
  @user = User.find(params[:id])
  erb :profile
end

##EDIT
get '/users/:id/edit' do
  erb :edit_profile
end

##UPDATE
put '/users/:id' do
  User.update(params[:user])
  redirect '/users/:id'
end
#DELETE
delete '/users/:id' do
  #????
  User.delete(params[:id])
  redirect '/users'
end
