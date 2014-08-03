require 'sinatra'
require 'faker'

get '/page1' do
  erb :page1, layout: :layout
end

get '/page2' do
  erb :page2, layout: :layout
end

get '/page3' do
  erb :page3, layout: :layout
end



