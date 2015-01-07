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
  erb :index

end

get '/es' do
  @locale = "es"
  erb :index
end

get '/en' do
  @locale = "en"
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

post '/mailcontacto' do
  require 'pony'

  from = "contacto@fibhios.com"
  subject = "Nuevo mensaje de contacto a FIBHIOS"

  Pony.mail(
  :from => from,
  :to => 'inversionistas@fibhios.com',
  :subject => subject,
  :headers => { 'Content-Type' => 'text/html' },
  :body => erb(:"globales/mail"),
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

# Nostros
get '/es/perfil' do
    @title = "Nuestro perfil"
    @menu = "Nosotros"
    erb :perfil, :layout => :"layouts/content_layout"
end

get '/es/filosofia' do
    @title = "Filosofía corporativa"
    @menu = "Nosotros"
    erb :filosofia

end
get '/es/directivos' do
    @title = "Equipo directivo"
    @menu = "Nosotros"
    erb :directivos

end
get '/es/estructura' do
    @title = "Estructura de participación"
    @menu = "Nosotros"
    erb :estructura

end

get '/es/creditos' do
    @title = "Créditos"
    erb :creditos

end

# portafolio
get '/es/propiedades' do
    @title = "Propiedades relacionadas"
    erb :propiedades

end

get '/es/operacion' do
    @title = "Operación de propiedades"
    erb :operacion

end

get '/es/distribucion' do
    @title = "Distribución de propiedades"
    erb :distribucion

end
get '/es/numeros' do
    @title = "FIBHIOS en números"
    erb :numeros

end

#contacto
get '/es/contacto' do
    @title = "Contacto"
    erb :contacto

end


# Propiedades
get '/es/propiedades/antara' do
    @title = "Antara"
    erb :"propiedades/antara"

end

get '/es/propiedades/andamar-I' do
   @title = "Andamar I"
  erb :"propiedades/andamar-I"
end

# get '/es/propiedades/andamar-II' do
#   erb :"propiedades/andamar-II"
# end

get '/es/propiedades/andares' do
  @title = "Andares"
  erb :"propiedades/andares"
end

get '/es/propiedades/angelopolis' do
  @title = "Angeopolis"
  erb :"propiedades/angelopolis"
end

get '/es/propiedades/luxury-hall' do
  @title = "Luxury Hall"
  erb :"propiedades/luxury-hall"
end

get '/es/propiedades/oficinas-ci-banco' do
  @title = "Oficinas CI Banco"
  erb :"propiedades/oficinas-ci-banco"
end

# get '/es/propiedades/picacho' do
#   erb :"propiedades/picacho"
# end

get '/es/propiedades/universidad' do
  @title = "Universidad"
  erb :"propiedades/universidad"
end

#inversionistas
##FIBHIOS
get '/es/inversionistas/perfil' do
    @title = "Perfil"
    @menu = "Inversionistas"
    @ri_menu = 1
    erb :"inversionistas/ri-perfil"


end
get '/es/inversionistas/marco-economico' do
    @title = "Marco económico"
    @menu = "Inversionistas"
    @ri_menu = 1
    erb :"inversionistas/ri-marco"

end

get '/es/inversionistas/perfil' do
    @title = "Perfil"
    @menu = "Inversionistas"
    @ri_menu = 1
    erb :"inversionistas/ri-perfil"

end
get '/es/inversionistas/directivos' do
    @title = "Equipo directivo"
    @menu = "Inversionistas"
    @ri_menu = 1
    erb :"inversionistas/ri-directivos"
end
##Estrategia
get '/es/inversionistas/estructura' do
    @title = "Estructura de participación"
    @menu = "Inversionistas"
    @ri_menu = 2
    erb :"inversionistas/ri-estructura"
end
get '/es/inversionistas/modelo' do
    @title = "Modelo de negocio"
    @menu = "Inversionistas"
    @ri_menu = 2
    erb :"inversionistas/ri-modelo"
end
get '/es/inversionistas/atractivo' do
    @title = "Atractivo de inversión"
    @menu = "Inversionistas"
    @ri_menu = 2
    erb :"inversionistas/ri-atractivo"
end
#Gobierno corporativo
get '/es/inversionistas/compromiso' do
    @title = "Compromiso"
    @menu = "Inversionistas"
    @ri_menu = 3
    erb :"inversionistas/ri-compromiso"
end
get '/es/inversionistas/comite-tecnico' do
    @title = "Comité Técnico"
    @menu = "Inversionistas"
    @ri_menu = 3
    erb :"inversionistas/ri-comitetecnico"
end
get '/es/inversionistas/comites' do
    @title = "Comités"
    @menu = "Inversionistas"
    @ri_menu = 3
    erb :"inversionistas/ri-comites"
end
get '/es/inversionistas/administrador' do
    @title = "Nuestro Administrador"
    @menu = "Inversionistas"
    @ri_menu = 3
    erb :"inversionistas/ri-administrador"
end
#Informacion bursatil
get '/es/inversionistas/tenedores' do
    @title = "Asamblea de Tenedores"
    @menu = "Inversionistas"
    @ri_menu = 4
    erb :"inversionistas/ri-tenedores"
end
get '/es/inversionistas/distribuciones' do
    @title = "Distribuciones"
    @menu = "Inversionistas"
    @ri_menu = 4
    erb :"inversionistas/ri-distribuciones"
end
get '/es/inversionistas/glosario' do
    @title = "Glosario"
    @menu = "Inversionistas"
    @ri_menu = 4
    erb :"inversionistas/ri-glosario"
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

get '/en/propiedades/andares' do
      @title = "Andares"
  erb :"english/propiedades/andares"
end

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
