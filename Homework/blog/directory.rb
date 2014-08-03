require 'sinatra'
require 'data_mapper'

DataMapper.setup(:default, 'mysql://root@localhost/posts')

class Blog
		include DataMapper::Resource
		property :id, Serial
		property :date, String
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