 	1	+require 'sinatra'
 	2	+
 	3	+class Person
 	4	+  attr_accessor :first_name
 	5	+  attr_accessor :last_name
 	6	+end
 	7	+
 	8	+get '/' do
 	9	+  'Hello world'
 	10	+end
 	11	+
 	12	+get '/sam_is_awesome' do
 	13	+  "Only sam wants to be awesome today"
 	14	+end
 	15	+
 	16	+get '/hello_world' do
 	17	+  erb :hello_world
 	18	+end
 	19	+
 	20	+get '/display_names' do
 	21	+  @dude = "Sup"
 	22	+  @names = [ 
 	23	+    { first_name: "Sam", last_name: "Waller"},
 	24	+    { first_name: "Jamie", last_name: "Kingston"},
 	25	+    { first_name: "Jim", last_name: "Rambow"},
 	26	+    { first_name: "John", last_name: "Hammond"}
 	27	+  ]
 	28	+  erb :display_names
 	29	+end
 	30	+
 	31	+get '/test_objects' do
 	32	+  person1 = Person.new
 	33	+  person1.first_name = "Ben"
 	34	+  person1.last_name = "Linville"
 	35	+  person2 = Person.new
 	36	+  person2.first_name = "Rob"
 	37	+  person2.last_name = "Rice"
 	38	+  @people = [
 	39	+    person1, person2
 	40	+  ]
 	41	+  erb :test_objects
 	42	+end
 	43	+
 	44	+get '/hello/:name' do
 	45	+  p params
 	46	+  @name = params[:name]
 	47	+  erb :hello
 	48	+end
 	49	+
 	50	+get '/test/:name/:hello/:jamie' do |asdf, hello, jamie|
 	51	+  p params
 	52	+  p params[:name]
 	53	+  p params[:hello]
 	54	+  p params[:jamie]
 	55	+  p asdf
 	56	+  p hello
 	57	+  p jamie
 	58	+end
 	59	+
 	60	+get '/layout1' do
 	61	+  erb :test_route, layout: :layout1
 	62	+end
 	63	+
 	64	+get '/layout2' do
 	65	+  erb :test_route2, layout: :layout1
 	66	+end