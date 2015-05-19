require 'sinatra'
require 'i18n'

before  '/es/*' do
@locale= "es"
end
before  '/en/*' do
@locale= "en"
end


before do @title = 'Fideicomiso Bursátil Hipotecario' end

get '/' do
  @locale = "es"
  erb :"es/vistas/index"

end

get '/es' do
  @locale = "es"
  erb :"es/vistas/index"
end

get '/en' do
  @locale = "en"
  erb :"english/index"
end



#globales
not_found do
  status 404
  erb :"/es/vistas/Independientes/pagina404"
end
get '/es/404' do
  erb :"/es/vistas/Independientes/pagina404"
end

post '/mailcontacto' do
  require 'pony'

  from = "contacto@fibhios.com"
  subject = "Nuevo mensaje de contacto a FIBHIOS"

  Pony.mail(
  :from => from,
  :to => 'inversionistas@fibhios.com',
  :subject => subject,
  :headers => { 'Content-Type' => 'text/html' },
  :body => erb(:"/es/vistas/Independientes/mail"),
  :via => :smtp,
  :via_options => {
    :address              => 'smtp.mailgun.org',
    :port                 => '587',
    :enable_starttls_auto => true,
    :user_name            => 'postmaster@irstrat.com',
    :password             => '5ptmod-dfz40',
    :authentication       => :plain,
    :domain               => "irstrat.com"
    })
    redirect '/'
  end



                                      # Menu 1

get '/es/directivos' do
  @title = "Equipo directivo"
  @menu = "Nosotros"
  erb :"/es/vistas/Menu-1/directivos"

end

get '/es/estructura' do
  @title = "Estructura de participación"
  @menu = "Nosotros"
  erb :"/es/vistas/Menu-1/estructura"

end

get '/es/filosofia' do
  @title = "Filosofía corporativa"
  @menu = "Nosotros"
  erb :"/es/vistas/Menu-1/filosofia"

end

get '/es/perfil' do
  @title = "Nuestro perfil"
  @menu = "Nosotros"
  erb :"/es/vistas/Menu-1/perfil", :layout => :"es/plantillas/content_layout"
end

get '/es/numeros' do
  @title = "FIBHIOS en números"
  @menu = "Nosotros"
  erb :"/es/vistas/Menu-1/numeros"
end


                                # Menu 2

get '/es/creditos' do
    @title = "Créditos"
    erb :"/es/vistas/Menu-2/creditos"
end

get '/es/distribucion' do
  @title = "Distribución de propiedades"
  erb :"/es/vistas/Menu-2/distribucion"
end


get '/es/operacion' do
  @title = "Operación de propiedades"
  erb :"/es/vistas/Menu-2/operacion"
end


get '/es/propiedades' do
    @title = "Propiedades relacionadas"
    erb :"/es/vistas/Menu-2/propiedades"
end



                                            # Menu 3
get '/es/inversionistas/compromiso' do
  @title = "Compromiso"
  @menu = "Inversionistas"
  @ri_menu = 3
  erb :"/es/vistas/Menu-3/ri-compromiso"
end

get '/es/inversionistas/distribuciones' do
  @title = "Distribuciones"
  @menu = "Inversionistas"
  @ri_menu = 4
  erb :"/es/vistas/Menu-3/ri-distribuciones"
end

get '/es/inversionistas/modelo' do
  @title = "Modelo de negocio"
  @menu = "Inversionistas"
  @ri_menu = 2
  erb :"/es/vistas/Menu-3/ri-modelo"
end

get '/es/inversionistas/perfil' do
  @title = "Perfil"
  @menu = "Inversionistas"
  @ri_menu = 1
  erb :"/es/vistas/Menu-3/ri-perfil"
end



              # Propiedades

get '/es/propiedades/andamar-I' do
  @title = "Andamar I"
  erb :"/es/vistas/propiedades/andamar-I"
end

# get '/es/propiedades/andamar-II' do
#   erb :"/es/vistas/propiedades/andamar-II"
# end

# get '/es/propiedades/andares' do
#   @title = "Andares"
#   erb :"/es/vistas/propiedades/andares"
# end

get '/es/propiedades/angelopolis' do
  @title = "Angeopolis"
  erb :"/es/vistas/propiedades/angelopolis"
end

get '/es/propiedades/antara' do
    @title = "Antara"
    erb :"/es/vistas/propiedades/antara"
end

get '/es/propiedades/luxury-hall' do
  @title = "Luxury Hall"
  erb :"/es/vistas/propiedades/luxury-hall"
end

get '/es/propiedades/oficinas-ci-banco' do
  @title = "Oficinas CI Banco"
  erb :"/es/vistas/propiedades/oficinas-ci-banco"
end

# get '/es/propiedades/picacho' do
#   erb :"/es/vistas/propiedades/picacho"
# end

get '/es/propiedades/universidad' do
  @title = "Universidad"
  erb :"/es/vistas/propiedades/universidad"
end



                          # Independientes

get '/es/contacto' do
  @title = "Contacto"
  erb :"/es/vistas/Independientes/contacto"
end




                              #Inversionistas


get '/es/inversionistas/administrador' do
  @title = "Nuestro Administrador"
  @menu = "Inversionistas"
  @ri_menu = 3
  erb :"/es/vistas/inversionistas/ri-administrador"
end

get '/es/inversionistas/atractivo' do
  @title = "Atractivo de inversión"
  @menu = "Inversionistas"
  @ri_menu = 2
  erb :"/es/vistas/inversionistas/ri-atractivo"
end

get '/es/inversionistas/ventajas' do
  @title = "Ventaja Competitiva"
  @menu = "Inversionistas"
  @ri_menu = 2
  erb :"/es/vistas/inversionistas/ri-ventajas"
end


get '/es/inversionistas/comites' do
  @title = "Comités"
  @menu = "Inversionistas"
  @ri_menu = 3
  erb :"/es/vistas/inversionistas/ri-comites"
end

get '/es/inversionistas/comite-tecnico' do
  @title = "Comité Técnico"
  @menu = "Inversionistas"
  @ri_menu = 3
  erb :"/es/vistas/inversionistas/ri-comitetecnico"
end

get '/es/inversionistas/directivos' do
  @title = "Equipo directivo"
  @menu = "Inversionistas"
  @ri_menu = 1
  erb :"/es/vistas/inversionistas/ri-directivos"
end

get '/es/inversionistas/estructura' do
  @title = "Estructura de participación"
  @menu = "Inversionistas"
  @ri_menu = 2
  erb :"/es/vistas/inversionistas/ri-estructura"
end

get '/es/inversionistas/glosario' do
  @title = "Glosario"
  @menu = "Inversionistas"
  @ri_menu = 4
  erb :"/es/vistas/inversionistas/ri-glosario"
end

get '/es/inversionistas/marco-economico' do
    @title = "Marco económico"
    @menu = "Inversionistas"
    @ri_menu = 1
    erb :"/es/vistas/inversionistas/ri-marco"
end

get '/es/inversionistas/tenedores' do
    @title = "Asamblea de Tenedores"
    @menu = "Inversionistas"
    @ri_menu = 4
    erb :"/es/vistas/inversionistas/ri-tenedores"
end








                                                          # Paginas en ingles


# Nostros
get '/en/perfil' do
  @title = "Profile"
  erb :"english/perfil"
end
get '/en/filosofia' do
  @title = "Corporate Philosophy"
  erb :"english/filosofia"
end
get '/en/directivos' do
  @title = "Management Team"
  erb :"english/directivos"
end
get '/en/estructura' do
  @title = "Collateral Structure"
  erb :"english/estructura"
end

get '/en/creditos' do
  @title = "Loans"
  erb :"english/creditos"
end


get '/en/propiedades' do
  @title = "Underlying Properties"
  erb :"english/propiedades"
end

get '/en/operacion' do
  @title = "Property Management"
  erb :"english/operacion"
end

get '/en/distribucion' do
      @title = "Property Distribution"
  erb :"english/distribucion"
end

get '/en/numeros' do
      @title = "FIBHIOS at a Glance"
  erb :"english/numeros"
end

get '/en/contacto' do
      @title = "Contact"
  erb :"english/contacto"
end


# Propiedades
get '/en/propiedades/antara' do
      @title = "Antara"
  erb :"english/propiedades/antara"
end

get '/en/propiedades/andamar-I' do
      @title = "Andamar I"
  erb :"english/propiedades/andamar-I"
end

# get '/en/propiedades/andamar-II' do
#   erb :"english/propiedades/andamar-II"
# end

# get '/en/propiedades/andares' do
#       @title = "Andares"
#   erb :"english/propiedades/andares"
# end

get '/en/propiedades/angelopolis' do
      @title = "Angelopolis"
  erb :"english/propiedades/angelopolis"
end

get '/en/propiedades/luxury-hall' do
      @title = "Luxury Hall"
  erb :"english/propiedades/luxury-hall"
end

get '/en/propiedades/oficinas-ci-banco' do
      @title = "Oficinas CI Banco"
  erb :"english/propiedades/oficinas-ci-banco"
end

# get '/en/propiedades/picacho' do
#   erb :"english/propiedades/picacho"
# end

get '/en/propiedades/universidad' do
      @title = "University"
  erb :"english/propiedades/universidad"
end

#inversionistas
##FIBHIOS
get '/en/inversionistas/perfil' do
  @title = "Profile"
  @menu = "Inversionistas"
  @ri_menu = 1
  erb :"english/inversionistas/ri-perfil"

end
get '/en/inversionistas/marco-economico' do
  @title = "Economic Backdrop"
  @menu = "Inversionistas"
  @ri_menu = 1
  erb :"english/inversionistas/ri-marco"
end

get '/en/inversionistas/directivos' do
  @title = "Management Team"
  @menu = "Inversionistas"
  @ri_menu = 1
  erb :"english/inversionistas/ri-directivos"
end
##Estrategia
get '/en/inversionistas/estructura' do
  @title = "Collateral Structure"
  @menu = "Inversionistas"
  @ri_menu = 2
  erb :"english/inversionistas/ri-estructura"
end
get '/en/inversionistas/modelo' do
  @title = "Business Model"
  @menu = "Inversionistas"
  @ri_menu = 2
  erb :"english/inversionistas/ri-modelo"
end
get '/en/inversionistas/atractivo' do
  @title = "Investment Grounds"
  @menu = "Inversionistas"
  @ri_menu = 2
  erb :"english/inversionistas/ri-atractivo"
end

get '/en/inversionistas/ventajas' do
  @title = "Competitive Advantage"
  @menu = "Inversionistas"
  @ri_menu = 2
  erb :"english/inversionistas/ri-ventajas"
end


#Gobierno corporativo
get '/en/inversionistas/compromiso' do
  @title = "Commitment"
  @menu = "Inversionistas"
  @ri_menu = 3
  erb :"english/inversionistas/ri-compromiso"
end
get '/en/inversionistas/comite-tecnico' do
  @title = "Technical Committee"
  @menu = "Inversionistas"
  @ri_menu = 3
  erb :"english/inversionistas/ri-comitetecnico"
end
get '/en/inversionistas/comites' do
  @title = "Governing Committees"
  @menu = "Inversionistas"
  @ri_menu = 3
  erb :"english/inversionistas/ri-comites"
end
get '/en/inversionistas/administrador' do
  @title = "External Manager"
  @menu = "Inversionistas"
  @ri_menu = 3
  erb :"english/inversionistas/ri-administrador"
end
#Informacion bursatil
get '/en/inversionistas/tenedores' do
  @title = "General Meetings"
  @menu = "Inversionistas"
  @ri_menu = 4
  erb :"english/inversionistas/ri-tenedores"
end
get '/en/inversionistas/distribuciones' do
  @title = "Distributions"
  @menu = "Inversionistas"
  @ri_menu = 4
  erb :"english/inversionistas/ri-distribuciones"
end
get '/en/inversionistas/glosario' do
  @title = "Glossary"
  @menu = "Inversionistas"
  @ri_menu = 4
  erb :"english/inversionistas/ri-glosario"
end

# My Helpers
helpers do
  def change_language
     if request.path_info=="/"
      "/en"
    elsif @locale =="es"
      request.path_info.sub('es', 'en')
    elsif  @locale =="en"

      request.path_info.sub('en', 'es')
    end

  end
end
