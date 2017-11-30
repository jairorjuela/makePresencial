                      #RUBY
#En google esta toda la documentacion de Ruby como ruby docs
#para instalar una gema(libreria) se usa el comando gem install nombre delalibreria
#Tipos de Datos:
#Primitivo:
#Booleano: true – false
#Interger: Enteros
#Float: Decimales
#Symbol: son llaves con valores que inician con dos puntos ejp: :edad=>23
#Estructura de Datos:
#String: Cadena de texto
#Array: Arreglos
#Hash: Son arreglos que no tienen indices, porque las llaves cumplen con dar un valor
#Rangos: llama desde una posición hasta la otra ejp: o..-1, con tres puntos imprime todos menos el ultimo
#Trabajando arreglos si queremos saber cual es el ultimo elemento del arreglo lo llamamos con el nombre y -1, para ingresar un elemento al arreglo lo incluimos con .push(dato a integrar)
#Para saber cuantos valores tiene un arreglo se escribe nombrearreglo.size
#Para agregar una llave a un Hash se escribe el nombre del hash la llave nueva y el valor ejp: pepito[:edad] = 30
#para borrar pepito.delete(:edad)
#Docs Ruby
#Stackoverflow = yahoo de programacion
#Interpolar se usa con doble comilla, se trata de a un string integrar una variable o cualquier expresion de Ruby, su sintaxis es:
#name = ‘jairo’
#saludo = “hola #{name}”
#con message se declara una variable que va a un condicional, nos ahorra codigo, porque va message con asinganacion condicional
#	message = if hour < 12
#	 ‘good morning’
#	elsif hour > 12 && hour < 17
#	 ‘good evening’
#Operador ternario, se usa cuando solo tenemos una condicion y lo queremos simplificar, nomvariable = condicion ? “accion si es true” : “accion si es false”
#hour = 10
#message = hour > 12 ? “pm” : “am”


#Cilos

#Loops = ejecuta un bloque de codigo hasta que se rompe la condicion
  #en loops hay next, eso hace que cuando la condicion se cumpla va a saltar las
  #lineas

  i=0
  loop do
    i+=1
    next if i==9
    print "#{i}"
    break if i==10
  end

#Iteradores

10.times do |i|
  print "#{i}"
end

pet_names = ['ozu', 'mara', 'Athos', 'polo']
pet_names.size.times do |i|
  puts "El nombre de la mascota es #{pet_names[i]}"
end

#de una mejor forma

pet_names = pet_names.each do |name|
  puts "El nombe de la mascota es #{name}"
end

pet_names.each do |name|
  puts "el nombre de la mascota es #{name}"
end

#metodo es un bloque de codigo reutilizable, se define con def sigue el nombre
#tienen que empezar con minuscula le nombre, luego el argumento pero es posible
#que no los tenga,
#definicion del metodo
def say_my_name(name, age, args)
  print arreglos
  "#{name} tienes #{age}}"
end

#invocar
say_my_name('juan', 26)

#Metodo: Es una funcion reutilizable para definirlo se usa def luego el nombre del
#metodo, luego dentro va lo que deseemos hacer y para invocarlo por fuera del end
#se llama el metodo solo con el nombre, siembre va a retornar lo ultimo que tenga
#almacenado, al definir las variables podemos utilizar un *rest, este * permite que
#se alamcene todo en lavariable definida con el *

#siempre que un metodo devuelva booleano el nombre va al final con ?
#Hay metodos que tienen ! ese signo convierte los metodos en destructivos, lo que hacen
#es cambiar la variable original, mientras que los que no tienen ! no modifican esta
#variable, lo que se debe hacer es crear una variableB y almacenar ahi la variable original

#iterando arreglos

#para iterar se usan metodos como .each do |element| , each devuelve siempre el
#arreglo original sobre el que trabajo
# variable.map do |element| hace una copia de un arreglo y trabaja sobre ella, luego
#se debe asignar una variable para que guarde .map

nums = [1,2,3,4]
odds = []
nums.each do |num|
  odds << num if num % 2 != 0
end

#con otro metodo

nums = [1,2,3,4]
odds = []
nums.each do |num|
  odds << num if num.odd?
end
#con otro metodo
nums = [1,2,3,4]
odds = num.filter { |num| num.odd? }

#inject o reduce, cuando quiero reducir algo, primero le doy un valor inicial al
#acumulador en este caso cero y luego el bloque
sum = nums.reduce(0) do |accu, num|
  accu += num
end
puts sum

odds = nums.reduce ([]) do |accu, num|
  if num.odd
    accu<< num
  else
    accu
  end
end


nums = [1,4,5,8,9,1,1]
has = nums.reduce ({oddds: 0, evens: 0}) do |hash, value|
  if value.even?
    hash[:evens] += 1
  else
    hash[:odds] = hash[:odds] + 1
  end
  hash
end

histogram = nums.reduce ({}) do |accu, num|

def my_map(array)
  result = []
  count = 0
  array.length.times do |element|
    result << yield(array[element])
  end
result
end

result = my_map([1,2,3])



clase file, esta clase puede modificar cualquier archivo del pc, leer, escribir, etc
#Expresiones regulares seguir las reglas de Clase regexp para validar
puedo ingresar a la pagina RUBULAR
