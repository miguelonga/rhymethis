require 'sinatra'

wordarray = ["carretera", "coche", "señal", "gafas", "policia", "loco", "avería", "reproche", "mofe"]
wordarray2 = ["avion", "piloto", "azafata", "pasajeros", "pistola", "cabeza", "avería", "disparo", "muerte"]
wordarray3 = ["histora", "felicidad", "puntos", "ganar", "matar", "mente", "constante", "pensamiento", "desafio"]
wordarray5 = ["policia", "carro", "puntos", "ventanilla", "colilla", "fumando", "pensando", "la loquera", "Energia", "Hijo del sol", "the litle Vila", "fucking KALIFA", "maria", "familia",
]
wordarray4 = ["tentacion", "opcion ", "situacion", "emocion", "razon", "imaginación", "intuicion", "sillón ", "balcón", "tensión", "seduccion", "pasion", "censura", "cintura", "amargura", "locura", "ternura", "dulzura", "desnuda", "fisura", "sepultura","armadura","atadura","caradura", "luna", "suda", "textura", "escritura" ,"hermosura"]


get '/' do

  @word = wordarray.sample 
  @counter = 0
  @counter += 1
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

get '/4' do
  @word = wordarray4.sample
  @word2 = wordarray4.sample

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
