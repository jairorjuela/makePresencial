require 'sinatra'

get '/' do
  HcUy6Re2LLBRtj
  erb :home
end

post '/views/:name' do
  @name = params[:nick]
  erb :index
end

suma de clics

get '/' do
  @number = params[:number]
  erb :index
end

mostrar mayusculas respuesta de make
post '/grandma' do
  if params[:user_input] == params[:user_input].upcase
    @grandma = "Ahhh si, manzanas!"
  else
    @grandma = "Habla más duro mijito"
  end
  redirect "/?grandma=#{@grandma}"
end

mostrar mayusculas respuesta mia
post '/views/:word' do
  @word = params[:phrase]
  erb :index
end


mostrar browser, leer variables del entorno env
get '/' do
  @browser = request.env["HTTP_USER_AGENT"]
  erb :home
end



























En este reto aprendimos uno de los usos que se le dan a los headers.

Mas adelante cuando empieces a trabajar con APIs te vas a dar cuenta que muchas de estas requieren que envies headers específicos con valores específicos para poder autenticar tu request. Recuerda un header no es mas que información que le estamos pasando al servidor sobre nuestro request, y este nos va a devolver una respuesta con otros headers que describen el tipo de respuesta que nos esta entregando.

Esta era una posible respuesta a este reto:

get '/' do
  if env["HTTP_PERMISO"] == "soy-un-token-secreto"
    "Si lo logramos!"
  else
    "Sin Permiso"
  end
end
Lo único que estamos haciendo es validando si el request viene con el header permiso y que el valor de este sea soy-un-token-secreto, en caso de que si validamos el request y le damos acceso a la zona privado en caso contrario la rechazamos.

Por otro lado te puedes estar preguntando que era ese comando que te dimos. Ese comando esta basado en en una herramienta que se llama curl, la cual basicamente es un navegador que funciona desde la linea de comandos y por lo tanto nos deja realizar requests a nuestro servidor, añadiendo cualquier tipo de header personalizado que queramos.

































# get '/' do
#   @nombre = params[:nombre]
#     if @nombre
#       "<h1>Hola #{@nombre}!</h1>"
#     else
#       "Hola desconocido!"
#     end
# end

# get '/makers/:nombre' do
#   @nombre = params[:nombre]
#     if @nombre
#       "<h1>Hola #{@nombre.capitalize}!</h1>"
#     else
#       "Hola desconocido!"
#     end
# end

# post '/views/:name' do
#   @name = params[:nick]
#   erb :index
# end
