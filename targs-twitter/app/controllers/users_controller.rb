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
  new_user = User.new(
    :username => params[:username],
    :email => params[:email]
    )
  new_user.password = params[:password]
  new_user.save
  redirect "/users/#{new_user.id}"
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
