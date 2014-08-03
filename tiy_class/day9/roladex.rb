require 'sinatra'
require 'data_mapper'

DataMapper.setup(:default, 'mysql://root@localhost/people')
#local host is 127.0.0.1
#'mysql://username:password@ip_address/database'

class Contact
		include DataMapper::Resource

		#attr_accessor :first_name
		#attr_accessor :last_name
		property :id, Serial
		property :first_name, String
		property :last_name, String
		property :email, String
end

DataMapper.finalize.auto_upgrade!

get '/' do 	
	@contacts = Contact.all
	erb :route, layout: :layout
end

get '/create_contact' do
	erb :create_contact, layout: :layout
end

post '/create_contact' do
	# puts "*"*100
	# puts "Hello World"
	# puts "*"*100
	#p params
	@contact = Contact.create params[:contact]
	redirect to('/')
end

get 'show_contact/:id' do
	@contact = Contact.get params[:id]
	erb :show_contact, layout: :layout
end

get 'edit_contact/:id' do
	@contact = Contact.get params[:id]
	erb :edit_contact, layout: :layout
end

put 'edit_contact/:id' do
	@contact = Contact.get params[:id]
	@contact.update params[:contact]
	redirect to ('/')
end

delete '/delete_contact/:id' do
	@contact = Contact.get params[:id]
	@contact.destroy
	redirect to('/')
	end 

