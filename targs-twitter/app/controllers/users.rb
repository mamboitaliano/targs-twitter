get'/' do
  redirect to '/users/register'
end

##INDEX
get '/users' do
  @users = User.all
  erb :users
end

##NEW
get '/users/register' do
  erb :registration_form
end

##CREATE
post '/users' do
  User.create(params[:user])
  redirect '/users'
end

##SHOW
get '/users/:id' do
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
