require 'sinatra'

wordarray = ["carretera", "coche", "señal", "gafas", "policia", "loco", "avería", "reproche", "mofe"]
wordarray2 = ["avion", "piloto", "azafata", "pasajeros", "pistola", "cabeza", "avería", "disparo", "muerte"]
wordarray3 = ["histora", "felicidad", "puntos", "ganar", "matar", "mente", "constante", "pensamiento", "desafio"]


get '/' do
  @word = wordarray.sample
  erb :word
end

get '/2' do
  @word = wordarray2.sample
  erb :word
end

get '/3' do
  @word = wordarray3.sample
  erb :word
end

# post '/make-history' do
#   myarray = (params[:words].split).cycle.to_enum
#   @word = myarray.next
#   erb :word
# end


# wordarray2 = ["carretera", "coche", "señal", "gafas", "policia", "loco", "avería", "reproche", "mofe"]

# get '/2words' do
#   @word = wordarray2.sample
#   erb :word
# end
