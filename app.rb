require 'sinatra'

get '/' do
  erb :index
end

get '/es' do
  erb :index
end

get '/en' do
  erb :"english/index"
end



#globales
not_found do
  status 404
  erb :pagina404
end
get '/es/404' do
  erb :pagina404
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
##FIBHIOS
get '/es/inversionistas/perfil' do
    @ri_menu = 1
    erb :"inversionistas/ri-perfil"

end
get '/es/inversionistas/marco-economico' do
    @ri_menu = 1
    erb :"inversionistas/ri-marco"
end

get '/es/inversionistas/perfil' do
    @ri_menu = 1
    erb :"inversionistas/ri-perfil"
end
get '/es/inversionistas/directivos' do
    @ri_menu = 1
    erb :"inversionistas/ri-directivos"
end
##Estrategia
get '/es/inversionistas/estructura' do
    @ri_menu = 2
    erb :"inversionistas/ri-estructura"
end
get '/es/inversionistas/modelo' do
    @ri_menu = 2
    erb :"inversionistas/ri-modelo"
end
get '/es/inversionistas/atractivo' do
    @ri_menu = 2
    erb :"inversionistas/ri-atractivo"
end
#Gobierno corporativo 
get '/es/inversionistas/compromiso' do
    @ri_menu = 3
    erb :"inversionistas/ri-compromiso"
end
get '/es/inversionistas/comite-tecnico' do
    @ri_menu = 3
    erb :"inversionistas/ri-comitetecnico"
end
get '/es/inversionistas/comites' do
    @ri_menu = 3
    erb :"inversionistas/ri-comites"
end
get '/es/inversionistas/administrador' do
    @ri_menu = 3
    erb :"inversionistas/ri-administrador"
end
#Informacion bursatil
get '/es/inversionistas/tenedores' do
    @ri_menu = 4
    erb :"inversionistas/ri-tenedores"
end
get '/es/inversionistas/distribuciones' do
    @ri_menu = 4
    erb :"inversionistas/ri-distribuciones"
end
get '/es/inversionistas/glosario' do
    @ri_menu = 4
    erb :"inversionistas/ri-glosario"
end


                                                          # Paginas en ingles


# Nostros
get '/en/perfil' do
  erb :"english/perfil"
end
get '/en/filosofia' do
  erb :"english/filosofia"
end
get '/en/directivos' do
  erb :"english/directivos"
end
get '/en/estructura' do
  erb :"english/estructura"
end



get '/en/creditos' do
  erb :"english/creditos"
end


get '/en/propiedades' do
  erb :"english/propiedades"
end

get '/en/operacion' do
  erb :"english/operacion"
end

get '/en/distribucion' do
  erb :"english/distribucion"
end

get '/en/contacto' do
  erb :"english/contacto"
end


# Propiedades
get '/en/propiedades/antara' do
  erb :"english/propiedades/antara"
end

get '/en/propiedades/andamar-I' do
  erb :"english/propiedades/andamar-I"
end

get '/en/propiedades/andamar-II' do
  erb :"english/propiedades/andamar-II"
end

get '/en/propiedades/andares' do
  erb :"english/propiedades/andares"
end

get '/en/propiedades/angelopolis' do
  erb :"english/propiedades/angelopolis"
end

get '/en/propiedades/luxury-hall' do
  erb :"english/propiedades/luxury-hall"
end

get '/en/propiedades/oficinas-ci-banco' do
  erb :"english/propiedades/oficinas-ci-banco"
end

get '/en/propiedades/picacho' do
  erb :"english/propiedades/picacho"
end

get '/en/propiedades/universidad' do
  erb :"english/propiedades/universidad"
end

#inversionistas
##FIBHIOS
get '/en/inversionistas/perfil' do
  @ri_menu = 1
  erb :"english/inversionistas/ri-perfil"

end
get '/en/inversionistas/marco-economico' do
  @ri_menu = 1
  erb :"english/inversionistas/ri-marco"
end

get '/en/inversionistas/perfil' do
  @ri_menu = 1
  erb :"english/inversionistas/ri-perfil"
end
get '/en/inversionistas/directivos' do
  @ri_menu = 1
  erb :"english/inversionistas/ri-directivos"
end
##Estrategia
get '/en/inversionistas/estructura' do
  @ri_menu = 2
  erb :"english/inversionistas/ri-estructura"
end
get '/en/inversionistas/modelo' do
  @ri_menu = 2
  erb :"english/inversionistas/ri-modelo"
end
get '/en/inversionistas/atractivo' do
  @ri_menu = 2
  erb :"english/inversionistas/ri-atractivo"
end
#Gobierno corporativo
get '/en/inversionistas/compromiso' do
  @ri_menu = 3
  erb :"english/inversionistas/ri-compromiso"
end
get '/en/inversionistas/comite-tecnico' do
  @ri_menu = 3
  erb :"english/inversionistas/ri-comitetecnico"
end
get '/en/inversionistas/comites' do
  @ri_menu = 3
  erb :"english/inversionistas/ri-comites"
end
get '/en/inversionistas/administrador' do
  @ri_menu = 3
  erb :"english/inversionistas/ri-administrador"
end
#Informacion bursatil
get '/en/inversionistas/tenedores' do
  @ri_menu = 4
  erb :"english/inversionistas/ri-tenedores"
end
get '/en/inversionistas/distribuciones' do
  @ri_menu = 4
  erb :"english/inversionistas/ri-distribuciones"
end
get '/en/inversionistas/glosario' do
  @ri_menu = 4
  erb :"english/inversionistas/ri-glosario"
end






