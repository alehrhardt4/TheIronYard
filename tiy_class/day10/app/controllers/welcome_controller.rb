class WelcomeController < ApplicationController

def index
p '*'*100
@tournaments = Tournament.all
end

end