//funcion anonima(es mas seguo hacerlo de esta forma)
var hola = function(){
  console.log('hola');
}

var hola = function(name){
reurn 'hola ${name}'
}


//otra forma de iterar ademas del for
names.forEach(function(namme){
  console.log(name);
})

//funciones constructoras, construyen un objeto, para el desarrollador poder saber que es una funcion de este tipo la primera letra va en mayuscula
function Dog(name, age){
  var dog = {}
  dog.name = name
  dog.age = age
  return dog
}

ozu = new Dog('ozu', 34) //cuando coloco ese new JS asume que va a ser un objeto y es el unico caso donde no se debe colocar el return porque el lo llama

function Dog(name, age){
  this.name =  name
  this.age = age
}

//prototype, prototype es una propiedad de una funcion y es un objeto
// prototype chain,

// prototype
// prototype chain


var Cow = function(name) {
  this.stomages = 4
  this.muu = function() {
    console.log(`${this.name} Muuuuu`)
  }
}

var Animal = function(name, fasdfds,fasdf) {
  this.name = name
  this.alive = true
}

Animal.prototype.die = function() {
  this.alive = false
}

var Dog = function(name, breed) {
  Animal.call(this, name)
  this.breed = breed
}

Dog.prototype = Object.create(Animal.prototype)

Dog.prototype.woof = function() {
  console.log(`${this.name} Wooof`)
}


ozu = new Dog('ozu', 'bulldog')
// Las 4 formas en las que this toma su valor

// 1. El llamado Default: this es window
// 2. Cuando se llama una funcion con new: this es {}
// 3. Es cuando se llama una funcion como un metodo: this es el objecto sobre el que se invoco
// 4. Cuando se llama una funcion usando .call() y .apply(): this es el primer argumetno que le pase a call y apply
