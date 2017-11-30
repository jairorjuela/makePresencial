   #se modela con clases, las clases inician en mayusculas, la calse define
#las propiedades del objeto y llos comportamientos del mismo

#creando un perro, la calse se ve como una fabrica o un plano en la vida real

class Dog
  #este atributo ahorra el codigo de def name visto en comentarios abajo
attr_reader :bread, :size, :color, :age, :sex
#este atributo permite sobreescribir las variables de instancia
attr_writer :bread, :size, :color, :age, :sex
#este atributo une el reader con el writer
attr_accessor :color
#siempre el new invoca un initialize
   def initialize(name, breed, size, color, age, sex)
    #las variables de instancia se definen con @
    @name = name
    @breed = breed
    @size = size
    @color = color
    @age = age
    @sex = sex
  end
  #las variables de instancia quedan probadas, debemos crearlas como metodos para
  #vovlerlas publicas y poder llamarlas
  #def name
    #@name
  #end
#end

#aca vamos a definir las variables de los comportamientos, estos metodos se
#llaman metodos de instancia
def hungry?
  if rand(2) == 1
    true
  else
    false
end
#para crear un metodo de la calse se puede hacer con self que es la forma de
#llamar donde estoy parado metodo o instancia, en este caso el metodo o por el
#nombre del metodo
def self.party(dogs) #tambien serviria Dogs.party
  "uahhh turu #{dogs.first.name} #{dogs.last.name} si fiestaa"
end
#creacion siempre va con new, la instancia es oliva, es el objeto
oliva = Dog.new('oliva', 'shitzu', 'pequeño', 'blanca', 2, 'hembra')
#para paar un proceso en un punto se usa, esto me corre el codigo hasta donde
#encuentre esta variable
binding.pry este atributo requiere siempre un require 'pry'
#Para definir la herencia de una clase va con simbolo < Dog < Clase de dog
#method_missing => comodin de error de metodos

def method_missing(method_id)
  p method_id
  "Error"

#Para llamar un metodo de la clase padre directo, se usaun
class Dog < Animal #la clase siempre va en mayuscula y singular
  def initialize(name)
    super#llama initialize en la clase padre directo,
    #usualmente se le asigna cero argumentos con super()
    @name = name
  end
end


#una forma de imprimir  es con un metodo que modifique el to_s
def to_s
  " texto #{@variable de instancia}"
end

#para crear variables de clase van con dos @ y para crear un metodo de clase
#va con self y no se recomienda su uso

@@dogs = 0
def self.dog_count
  @@dogs
end

#los modulos pueden ser utiles para agrupar comportamientos, y no tener que
#repetir metodos en el codigo, termianan en able y empiezan con mayuscula

module Swimable
  def swimming
    "spalshh"
  end
end

#van luego del metodo con un include y el nombre del metodo, si voy a
#incluir el metodo como metodo de clase cambio el include por un extend


#cuando un metodo recibe muchos argumentos se crea un hash para evaluar mas
#facil las llaves , las llaves representan lo que estamos asignando dentro del
#metodo se llama el hash
@variable_de_instacia = nombre_hash[:llave]

#metodo private, se usa para ocultar el metodo del usuario y poderlo llamar donde queramos
# todo lo que va debajo de un private queda privado ejp
private
def hunter_or_not
  @alive
end
#va sin end
 #clase::nombre_constante
