require 'sinatra'

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

get '/es/contacto' do
    erb :contacto
end

get '/es/404' do
  erb :pagina404
end




# Propiedades
get '/es/propiedades/antara' do
    erb :"propiedades/antara"
end

get '/es/propiedades/andamar-I' do
  erb :"propiedades/andamar-I"
end

get '/es/propiedades/andamar-II' do
  erb :"propiedades/andamar-II"
end

get '/es/propiedades/andares' do
  erb :"propiedades/andares"
end

get '/es/propiedades/angelopolis' do
  erb :"propiedades/angelopolis"
end

get '/es/propiedades/luxury-hall' do
  erb :"propiedades/luxury-hall"
end

get '/es/propiedades/oficinas-ci-banco' do
  erb :"propiedades/oficinas-ci-banco"
end

get '/es/propiedades/picacho' do
  erb :"propiedades/picacho"
end

get '/es/propiedades/universidad' do
  erb :"propiedades/universidad"
end

#inversionistas

get '/es/inversionistas/perfil' do
    erb :"inversionistas/ri-perfil"
end
get '/es/inversionistas/marco-economico' do
    erb :"inversionistas/ri-marco"
end


