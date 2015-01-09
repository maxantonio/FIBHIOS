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
  erb :"es/vistas/Independientes/pagina404"
end
get '/es/404' do
  erb :"es/vistas/Independientes/pagina404"
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
      :body => erb(:"es/vistas/Independientes/mail"),
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
  erb :directivos

end

get '/es/estructura' do
  @title = "Estructura de participación"
  @menu = "Nosotros"
  erb :estructura

end

get '/es/filosofia' do
  @title = "Filosofía corporativa"
  @menu = "Nosotros"
  erb :filosofia

end

get '/es/perfil' do
  @title = "Nuestro perfil"
  @menu = "Nosotros"
  erb :perfil, :layout => :"es/plantillas/content_layout"
end

get '/es/numeros' do
  @title = "FIBHIOS en números"
  @menu = "Nosotros"
  erb :numeros

end




