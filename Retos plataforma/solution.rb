#reto1
secret_of_universe = 42
names = ["Make", "It", "Real", "Is", "Awesome"]
im_learning = true

def suma (num1,num2)
  resultado = num1 + num2
end
#reto2
def saluda(nombre)
  "Hola #{nombre}"
end

#reto3 encontrar la longitud de texto
def longitud(array)
  array.length
end

#reto4 encontrar un numero dentro de un arreglo
def count_matches(array, integer)
  array.count(integer)
end

#reto5 organizar de mayor a menor o viceversa
def order (array, reverse)
  if reverse == true
    array.sort.reverse
  else
    array.sort
  end
end
#multiplicar cadenas de texto
def santa_claus(num)
  if num <=0
    jo = " "
  else
    jo = "jo" * num
  end
end
#ajustar cadenas de texto segun un length
def adjust_text(string, num)
  if num < string.length
    num = " " * num
    string = num
    else
  num = num - string.length
  string = string + (" " * num)
  end
end

#multiplicar un arreglo por un numero dado
def multiplier (array, num)
  array.map {|a| 2*a}
end
#texto y booleano
def alive? (playerName, points)
  if (playerName == "ikk" && points > 30) || (playerName == "gut" && points > 10)
    true
  else
    false
  end
end

#Reto fizz
def fizz_buzz(num)
  if (num%3 == 0 && num%5 == 0)
 "fizzbuzz"
  elsif num%5 == 0
    "buzz"
  elsif num%3 == 0
   "fizz"
  else
    num
  end
end

# ejercicios con Hash

def create_hash(temperature, altitude, pressure)
  hash = Hash.new (0)
  hash[:temperature] = temperature
  hash[:altitude] = altitude
  hash[:pressure] = pressure
  hash.each do |key, value|
    #print " #{key} : #{value}  "
  end
end
# #Solucion de Makeit
def create_hash(temperature, altitude, pressure)
  { temperature: temperature, altitude: altitude, pressure: pressure }
end
#Acceso y asignacion de llaves
def defaults(hash)
  falta = 0
  falta1 = 0
  falta2 = 0
    if hash.empty? == true
       hash = {temperature: 10, altitude: 12000, pressure: 500}
    end
    hash.each do |key|
      if hash.has_key?(:temperature) == false
        falta2 = 2
      end
    end
    if falta2 == 2
      hash[:temperature] = 10
    end
    hash.each do |key|
      if hash.has_key?(:altitude) == false
        falta1 = 2
      end
    end
    if falta1 == 2
      hash[:altitude] = 12000
    end
    hash.each do |key|
      if hash.has_key?(:pressure) == false
        falta = 2
      end
    end
    if falta == 2
      hash[:pressure] = 500
    end
  hash.each do |key, value|
    if hash.has_key?(:temperature) && hash.has_value?(0)
       hash[:temperature] = 10
    end
  end
  hash.each do |key, value|
    if hash.has_key?(:altitude) && hash.has_value?(0)
       hash[:altitude] = 12000
    end
  end
  hash.each do |key, value|
    if hash.has_key?(:pressure) && hash.has_value?(0)
       hash[:pressure] = 500
    end
  end
end

#Solucion de Make
def defaults(hash)
  { temperature: 10, altitude: 12000, pressure: 500 }.merge(hash)
end
#obtener un numero minimo y uno maximo
def maximo(*array)
  array.max
end

def minimo(*array)
  array.min
end

maxi = maximo(99,3,6,9,1,34,67)
p maxi

mini = minimo(4,1,6,5,2)
p mini

#comparar string con regex
def is_plate?(string)
  if string.match /(^[A-Z]{3}\d{3}$)/
    p true
  else
    p false
  end
end
#solucion de Makeit
def is_plate?(string)
  string =~ /^[A-Z]{3}[0-9]{3}$/
end

#creando un nuevo archivo y escribiendo en el
def write (archivo, texto)
  new_file = File.new(archivo, "w+")
  File.open(archivo, "a") do |file|
    new_file.puts texto
    end
  new_file.close
end
#solucion de Makeit
def write(file, content)
  File.write(file, content)
end
#leer archivo
def read(archivo)
  if File.exist?(archivo)
    File.open(archivo).each do |line|
      return "#{line}"
    end
  else
    return nil
  end
end

#solucion de Makeit
def read(file)
  File.read(file) if File.file?(file)
  # IO.read(file) también funciona
end


#leer y sobreescribir
def load_tasks(file_task)
  tasks = []
  if File.exists?(file_task)
    file_task = File.open(file_task, 'r')
    File.open(file_task, 'r') do |file|
      file.each do |block|
        block = block.split(',').map(&:strip)
        tasks << {id: block[0].to_i, name: block[1], done: block[2] == 'true'}
      end
    end
    tasks.each do |key, value|
    end
  else
    tasks.each do |key, value|
    end
  end
end

def save_task(file_task, tasks)
  File.open(file_task, 'w+') do |file|
    tasks.each do |task|
      file.puts "#{task[:id]},#{task[:name]},#{task[:done]}"
    end
  end
end
#https://nathanhoad.net/ruby-multiple-assignment

#solucion Make

def load_tasks(file)
  return [] unless File.file?(file)
  tasks = []
  File.foreach(file) do |line|
    id, name, done = line.chomp.split(',')
    tasks.push({ id: id.to_i, name: name, done: done == "true" })
  end
  tasks # muy importante retornar las tareas
end

def save_tasks(file, tasks)
  File.open(file, 'w') do |f|
    tasks.each { |t| f.puts "#{t[:id]},#{t[:name]},#{t[:done]}" }
  end
end

#clases
class Car
  attr_reader :velocity
  attr_accessor :brake, :accelerate
  def initialize(accelerate = nil, brake = nil)
    @velocity = 0
    @brake = 0
    @accelerate = 1
  end
 def velocity
    @velocity
  end

  def accelerate(accelerate = 1)
    @accelerate = accelerate
    @velocity = @velocity + @accelerate
  end

  def brake(brake = 1)
    @brake = brake
      if @brake > 0
        @accelerate = @accelerate - @brake
        @velocity = @velocity - @brake
      end
  end
end


#llamando un metodo en una clase
class Article
  attr_accessor :body
  include TextAnalyzer
  def initialize(b)
  @body = b
  end
end

class Comment
  attr_accessor :body
  include TextAnalyzer
   def initialize(b)
   @body = b
   end
end

#https://blog.makeitreal.camp/modulos-en-ruby/

class PersonError < ArgumentError
end
class Person
  attr_accessor :name

  def initialize(name)
    unless name.is_a?(String)
      raise ArgumentError.new("ArgumentError")
    end
    @name = name
  end

  #def name_nil!(name)
   #   unless name.is_a?(String)
    #  raise ArgumentError.new("ArgumentError")
    #end
  #end
end


#ArgumentError
class Person
  attr_reader :name

  def initialize(name)
    self.name = name
  end

  # nuestro propio método de escritura para name
  def name=(name)
    if name.nil? || name.empty?
      raise ArgumentError, "El nombre no puede ser vacío"
    end

    @name = name
  end
end

#palabras separando array
def phrase (array)
  if array.length >= 2
    array[0..-2].join(", ") << " y " << array[-1]
  elsif array.length == 1
     array.map{|k| "#{k}"}.join("")
  elsif array == []
     array = ""
  end
end

#palindrome
class String
  def palindrome?
    self.downcase.gsub(/\s+/, '') == self.downcase.gsub(/\s+/, '').reverse
  end
end

#solucion makeitreal
class String
  def palindrome?
    letters = self.downcase.scan(/\w/)
    letters == letters.reverse
  end
end

#codigo secreto ruby
def secret_code(string)
  hash_number = {"" => 0, "one" => 1, "two" => 2, "three" => 3, "four" => 4,
  "five" => 5, "six" => 6, "seven" => 7, "eight" => 8, "nine" => 9, "ten" => 10}
  array = string.split(" ")
  array2 = Array.new
    array.each do |i|
      hash_number.each do |key, value|
        if i == key
          array2 << value
        end
      end
    end
  count = 0
  array2.each{|i| count+=i}
  count
end

#solucion make

def secret_code(phrase)
  numbers = { 'one' => 1, 'two' => 2, 'three' => 3, 'four' => 4, 'five' => 5, 'six' => 6, 'seven' => 7, 'eight' => 8, 'nine' => 9 }

  value = 0
  phrase.split(/\W/).each do |word|
    value += numbers[word] if numbers[word]
  end

  value
end
