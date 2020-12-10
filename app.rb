require_relative 'config/environment'
class App < Sinatra::Base
	get('/reversename/:name') {params[:name].reverse}
	get('/square/:number') {(params[:number].to_i * params[:number].to_i).to_s}
	get('/say/:number/:phrase') {"#{params[:phrase]} " * params[:number].to_i}
	get('/say/:word1/:word2/:word3/:word4/:word5') {params.values.join(" ") + "."}
	get('/:operation/:number1/:number2') {
		case params[:operation]
		when "add"
			(params[:number1].to_i + params[:number2].to_i).to_s
		when "subtract"
			(params[:number1].to_i - params[:number2].to_i).to_s
		when "multiply"
			(params[:number1].to_i * params[:number2].to_i).to_s
		when "divide"
			(params[:number1].to_i / params[:number2].to_i).to_s
		end
	}
end
