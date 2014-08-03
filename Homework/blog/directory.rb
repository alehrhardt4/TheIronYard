require 'jekyll'
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
	erb :layout
end

