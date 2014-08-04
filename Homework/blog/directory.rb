require 'jekyll'
require 'sinatra'
require 'data_mapper'

DataMapper.setup(:default, 'mysql://root@localhost/posts')

class Blog
		include DataMapper::Resource
		property :id, Serial
		property :title, String
		property :blog, String
end

DataMapper.finalize.auto_upgrade!

get '/' do 	
 @blog = Blog.all
	erb :index, layout: :layout
end

get '/create_blog' do
	erb :create_blog, layout: :layout
end

post '/create_blog' do
	@blog = Blog.create params[:blog]
	redirect to ('/')
end

get 'display_blog/:id' do
	@blog = Blog.get params[:title]
	erb :display_blog, layout: :layout
end

get 'edit_blog/:id' do
	@blog = Blog.get params[:title]
	erb :edit_blog, layout: :layout
end

put 'edit_blog/:id' do
	@blog = Blog.get params[:title]
	@blog.update params[:blog]
	redirect to ('/')
end

delete '/delete_blog/:id' do
	@blog = Blog.get params[:title]
	@blog.destroy
	redirect to('/')
	end 