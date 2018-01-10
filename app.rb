require "sinatra"

get '/' do
	erb :first
end

post '/math' do
	math_answer = params[:math_type]
	redirect '/math_input?math_answer=' + math_answer
end

get '/math_input' do
	result = params[:math_answer]
	if result == "addition"
		erb :addition
	elsif result == "subtraction"
		erb :subtraction
	elsif result == "division"
		erb :division
	elsif result == "multiplication"
		erb :multiplication
	else
		puts "Your answer must be addition, subtraction, multiplication, or division."
			
	end
end