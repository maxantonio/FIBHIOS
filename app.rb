
get '/' do
  erb :index
end
# Nostros
get '/es/perfil' do
    erb :perfil
end
get '/es/filosofia' do
    erb :filosofia
end
get '/es/directivos' do
    erb :directivos
end
get '/es/estructura' do
    erb :estructura
end


#portafolio
get '/es/creditos' do
    erb :creditos
end
get '/es/propiedades' do
    erb :propiedades
end
get '/es/operacion' do
    erb :operacion
end
get '/es/distribucion' do
    erb :distribucion
end

# Propiedades en detalle
get '/es/propiedades/antara' do
    erb :"propiedades/antara"
end





get '/es/perfilb' do
    erb :perfilb
end