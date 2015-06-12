##INDEX
get '/scoobs' do
  erb :scoobs
end

##NEW
get '/scoobs/new' do
  erb :make_a_scoob
end

##CREATE
post '/scoobs' do
  Scoob.create(params[:scoob])
  redirect '/scoobs'
end

##SHOW
get '/scoobs/:id' do
  erb :scoob
end

##EDIT
get '/scoobs/:id/edit' do
  erb :edit_scoob
end

##UPDATE
put '/scoobs/:id' do
  Scoob.update(params[:scoob])
  redirect '/scoobs/:id'
end
#DELETE
delete '/scoobs/:id' do
  #????
  Scoob.delete(params[:id])
  redirect '/scoobs'
end
