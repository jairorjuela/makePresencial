imprimir en pantalla
console.log ("Hola Mundo");

Asignar variables, si no se escirbe var queda como variable global y no es buena practica
var numeroSecreto = 32;
var clave = "jairo";
var permitido = true;

Creando una funcion
function suma(num, num2)
{
  return num + num2;
}

funcion con string
function saluda(nombre) {
  return "Hola " + nombre;
}

funcion para encontrar la longitud
function longitud(cadena)
{
  return cadena.length
}

condicionales
function isAlive(playerName, points) {
  return (playerName === "ikk" && points > 30) || (playerName === "gut" && points > 10)
}

isAlive("ikk", 50);

fizzBuzz
function fizzBuzz(num) {
  if (num % 5 === 0 && num % 3 === 0) {
    return "fizzbuzz";
  } else if (num % 5 === 0) {
    return "buzz";
  } else if (num % 3 === 0) {
    return "fizz";
  } else {
    return num;
  }
}

arreglando String
function adjustText(word,num)
{
  if (word.length > num)
  {
    var result = " ";
    result = word.substring(0,num);
    //return result;
    console.log(result);
  }
  else
  {
    num = num - word.length;
    var result = " ";
    result = result.repeat(num)
    result = word + result;
    //return result;
    console.log(result);
  }
}
solucion de MAKE
function adjustText(str, length) {
  if (str.length > length) {
     str = str.substring(0, length);
  } else {
    while (str.length < length) {
      str += " ";
    }
  }

  return str;
}

concepto recursividad JS o RECURSION
function factorial(n)
{
 if (n<=1) return 1;
 return n* factorial(n-1);
}

summa de arreglos
function sumame(array)
{
  suma = 0;
  for(i=0; i < array.length; i++){
  suma += array[i];}
  return suma;
}
suma de arreglos con reduce
function sumame(arr) {
  return arr.reduce(function(memo, i) {
    return memo + i;
  }, 0);
}

promedio de un arreglo
function promediame(array)
{
  suma = 0;
  promedio = 0;
  if (array.length == 0)
  {
    promedio = 0;
    return promedio;
  }
  else
  {
    for(i=0; i < array.length; i++){
    suma += array[i];}
    promedio = suma / array.length;
    return promedio;
  }
}

llamando funciones y cambiando arreglos
function transform (array,func)
{
  array1 = []
  func(); //esta es la forma de llamar la funcion que entra//
  for(i=0; i < array.length; i++)
  {

    array1.push(func(array[i]));
  }
     return array1;
}

llamando funciones y cambiando arreglos solcion de make
function transform(arr, func) {
  return arr.map(func);
}

http://blakeembrey.com/articles/2014/01/compose-functions-javascript/
https://medium.com/@dtipson/creating-an-es6ish-compose-in-javascript-ac580b95104a
FUNCION dentro de FUNCION
function compose(func1, func2) {
  return func2(func1());
}

ordenando, los arreglos se les debe pasar otra funcion para que se ordenen por su valor debido a que JS no los organiza automaticamente asi, los organiza "alfabeticamente"
function order(array, reverse = false)
{
  if (reverse === true)
  {
    array.sort(function(a, b){return b-a});
    return array;
  }
  else
  {
    array.sort(function(a, b){return a-b});
    return array;
  }
}

//solucion de make
function order(arr, reverse) {
  return arr.sort(function(a, b) {
    return reverse ? b - a : a - b
  });
}

sort es un método sobre los arreglos que recibe una función (un callback). Ese callback recibe dos argumentos y es el que va a decidir cómo se ordenan los elementos, debe retornar:

algo menor a 0 si el primer argumento es menor que el segundo
0 si son iguales.
algo mayor a 0 si el primero argumento es mayor que el segundo.
Con esa información el sort organiza los elementos.

concatenando arreglos
function flatten(array)
{
  var array1 = array.reduce(function(count, element){
    if (Array.isArray(element)){
      count = count.concat(element);
    }
    else{
      count.push(element);
    }
    return count;
  }, []);
  return array1;
}

//solucion de make
function flatten(arr) {
  return arr.reduce(function(memo, a) {
    return memo.concat(a);
  }, []);
}

el metodo reduce recibe una funcion, ademas recibe una variable que en este caso es el arreglo vacio [], la funcion por dentro recibe como primer argumento un contador y como segundo el elemento del arreglo, si como variable en cambio del arreglo vacio hubieramos colocado cero, el cero se va a modificar por el contador y va a retornar dependiendo del caso una suma por ejp

acumulador de valor en una variable
function counter()
{
  var suma = 0;
  return function counter1()
  {
   var count = 1;
   suma = suma + count;
   return suma;
  }
}
https://www.youtube.com/watch?v=yXRf98SN1P4
solucion de MAKE
function counter() {
  var count = 0;

  return function() {
    return ++count;
  };
}

Obejto literal en JS, llamado de propiedades dentro de objetos y declaracion de funciones
var pepito =
{
  nombre: "Pepito"
}

var maria =
{
  esposo: pepito,
  nombre: "Terah",
  edad: 32,
  altura: 1.70,
  peso: 60,
  colorPelo: "cafe",
  hijos:
  {
    german:
      {
        nombre: "German"
      }
  },
  bmi: function()
    {
      var bmi = this.peso / (this.altura*this.altura);
      return bmi;
    }
}

funcion constructoras
function User(name, email)
{
  var user = { };
  user.name = name;
  user.email = email;
  return user;
}

solucion de make
var User = function(name, email) {
  this.name = name;
  this.email = email;
};

funcion constructor y metodo de funcion
function Square(width,height)
{
  this.width = width;
  this.height = height;
}

Square.prototype.calculateArea = function()
  {
    var area = (this.width * this.height);
    return area;
}
opcion 1 de make
var Square = function(width, height) {
  this.width = width;
  this.height = height;
};

Square.prototype.calculateArea = function() {
  return this.width * this.height;
};
opcion 2 de make
var Square = function(width, height) {
  this.width = width;
  this.height = height;
  this.calculateArea = function() {
    return this.width * this.height;
  }
};

HERENCIA

function Car() {
  this.velocity = 0;
}
Car.prototype.accelerate = function(amount) {
  this.velocity += amount || 1;
  return this;
}
Car.prototype.break = function(amount) {
  this.velocity -= amount || 1;
  return this;
}

function Bus(velocity)
{
  Car.call(this, velocity);
}

Bus.prototype = Object.create(Car.prototype);
Bus.prototype.constructor = Bus;

Bus.prototype.beep = function()
{
  return "BEEP!";
}

SOLUCION DE MAKE
function Bus() {
  Car.call(this);
}
Bus.prototype = new Car();
Bus.prototype.beep = function() {
 return "BEEP!"
};
function maximo()
{
  for (i=0;x<arguments.length;i++)
  arguments[i] + "<br/>");
}

function minimo(){
for (i=0;x<arguments.length;i++)
    return(arguments[i] + "<br/>");
}
var min=Math.min.apply(null, valores);
var max=Math.max.apply(null, valores);
ES6 https://leanpub.com/understandinges6/read

Maximos y minimos
function maximo()
{
  arr = [];
  for (i=0; i < arguments.length; i++)
  arr.push(arguments[i]);
  var result = Math.max.apply(null,arr)
  return result;
}

function minimo()
{
  arr = [];
  for (i=0; i < arguments.length; i++)
  arr.push(arguments[i]);
  var result = Math.min.apply(null,arr)
  return result;
}


REGEX

function isPlate(string)
{
  var re = /(^[A-Z]{3}\d{3}$)/;
  if (string.match(re))
  {
    return true;
  }
  else{ return false;}
}
http://eloquentjavascript.net/09_regexp.html

Solucion MAKE
function isPlate(str) {
  return /[A-Z]{3}\d{3}/.test(str);
}

Expresion regular
function split(string)
{
  var myregexp2 = new RegExp(/[\s,\-,\+,\*]+/);
  var arr = string.split(myregexp2);
  return arr;
}

Solucion make
function split(str) {
  return str.split(/[\+\-\*]/);
}

Hacer Match
function plates(string)
{
  var array1 = string.split(' ');
  var rege = new RegExp(/[A-Z]{3}\d{3}/);
  var arr = [];
  array1.filter(function(word,index)
  {
    if(word.match(rege))
   {
    arr.push(word);
   }
   else
   {
     return arr;
    }
  });
  return arr;
}

solucion de make
function plates(str) {
  var matches = str.match(/[A-Z]{3}\d{3}/g);
  return matches ? matches : [];
}
La g al final de la expresión regular es un flag que hace una búsqueda global. Para más información sobre los flags que puede tener una expresión regular te recomendamos https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_Expressions#Advanced_searching_with_flags


en esta prueba quiero scar los valores del hash y buscar la forma de reemplazarlos en el string
function template(string,obj)
{
  var arr1 = [];
  var arr2 = [];
  var arr = string.split(' ');
  arr2.push(Object.values(obj));
  for(i=0; i < arr2.length; i++){
  return arr2[i];
  }
  for(i=0;i < arr.length;i++){
  	if(arr[i] == "[nombre]"){
        cad = arr.replace(arr.charAt(i), 'pirobo');
  	  return cad;
  		}
  	}

}

var cadena = "leandron";
var letrasCadena = cadena.split("")

for(i=0;i<letrasCadena.length;i++){
	if(letrasCadena[i] == "n"){
      cad = cadena.replace(cadena.charAt(i), 'x');
	  alert(cad);
		}
	}

  var re = /apples/gi;
  var str = "Apples are round, and apples are juicy.";
  var newstr = str.replace(re, "oranges");
  console.log(newstr);
convertir valor del arreglo en llave del hash para luego poder comparar

var h = Object.values(e); valores del hash


function template(string, obj)
{
  var re = "[nombre]";
  var re2 = "[saldo]";
  var word1 = string.replace(re, "Jairo")
  var word = string.replace(re2, "doss")
  console.log(word1);
  console.log(word);
}


function template(string, obj)
{
  string.replace(/nombre|saldo/gi, function (matched){
  obj[matched];
  })
console.log(obj1);
}

var str = "Hola [nombre], tu saldo es [saldo]";
var mapObj = { nombre: "German", saldo: 12000 }
str.replace(/nombre/, function(matched){
var obj = mapObj[matched];
return obj;
});
var obj1 = obj.replace(/saldo/, function(matched){
   mapObj[matched];
  return obj1;
});


var str = "I have a cat, a dog, and a goat.";
var mapObj = {cat:"teddy",dog:"Athos"};
str.replace(/cat|dog/gi, function(matched){
return mapObj[matched];
});


https://developer.mozilla.org/es/docs/Web/JavaScript/Referencia/Objetos_globales/String/replace
function replaceAll(str,mapObj){
   var re = new RegExp(Object.keys(mapObj).join("|"),"gi");
   return str.replace(re, function(matched){
       return mapObj[matched.toLowerCase()];
   });
}
https://stackoverflow.com/questions/15604140/replace-multiple-strings-with-multiple-other-strings

https://stackoverflow.com/questions/16576983/replace-multiple-characters-in-one-replace-call


Reemplazando en cadenas de texto!
function template(str, obj)
{

  if(obj === undefined){
    return str;
  }

  if(Object.values(obj).length === 0){
    return str.replace("[nombre]", "undefined");
  }

  if(Object.values(obj).length != 0){
    x = 2;
    if(Object.values(obj).length >= 2){
      for (i = 0; i < x; i++){
        var re = new RegExp('\\[' + Object.keys(obj)[0] + '\\]', 'gi');
        var result1 = str.replace(re, Object.values(obj)[0], 'gi');
        var re = new RegExp('\\[' + Object.keys(obj)[1] + '\\]', 'gi');
        var result2 = str.replace(re, Object.values(obj)[1], 'gi');
      }
      for (i = 1; i < x; i++){
        var re = new RegExp('\\[' + Object.keys(obj)[1] + '\\]', 'gi');
        var result2 = result1.replace(re, Object.values(obj)[1], 'gi');
      }
      return result2;
    }

    if(Object.values(obj).length == 1){
      var re = new RegExp('\\[' + Object.keys(obj) + '\\]', 'gi');
      var result = str.replace(re, Object.values(obj), 'gi');
      return result;
    }
  }
}

var a = template("Hola [nombre]  /Resultado: Hola German", { nombre: "German" });
var b = template("Hola [nombre], tu saldo es [saldo]  /Resultado: Hola German, tu saldo es 12000", { nombre: "German", saldo: 12000 });
var c = template("Hola mundo  /Resultado: Hola mundo", { });
var d = template("Hola [nombre]  /Resultado: Hola undefined", {});
var e = template("Hola mundo   /Resultado: Hola mundo", { nombre: "German" });

console.log(a);
console.log(b);
console.log(c);
console.log(d);
console.log(e);

solucion de make

function template(str, data) {
  var regexp = /\[(.*?)\]/g;
  var vars = [];

  // obtenemos las variables del texto
  var matches = regexp.exec(str);
  while (matches) {
    vars.push(matches[1]);
    matches = regexp.exec(str);
  }

  // reemplazamos las variables con los valores que vienen en el objeto
  for (var i=0; i < vars.length; i++) {
    str = str.replace("[" + vars[i] + "]", data[vars[i]]);
  }

  return str;
}
















M guarda el estado de la aplicacion - modelo es el carro y la pista ellos saben que pueden hacer, cuanto corren, que tan grande pueden ser, etc
V es la presentacion - la vista es la que mueve las clases la que saca alertas
C separa en la mitad de M y de V
















  // fin
