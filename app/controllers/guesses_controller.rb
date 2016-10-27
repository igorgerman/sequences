class GuessesController <ApplicationController

def index

g = Guess.new
g.first_number = params["n1"]
g.second_number = params["n2"]
g.third_number = params["n3"]
g.save

@list = Guess.all

render("guesses/index.html.erb")
end

def answer

@user_answer = params["q"]

render("guesses/answer.html.erb")
end

end
