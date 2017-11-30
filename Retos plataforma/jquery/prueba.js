$('.wrapper').on('click', function(){
  console.log("holi");
  $('.done').append('<li>', $('.todo').text(), '</li>').addClass('.ul li');
  $('.todo').remove();
})










// La solución es enlazar el evento a un elemento padre que exista desde el principio y pasar un segundo argumento al método on con el selector específico sobre el que queremos que actúe el evento:
// $('ul').on('click', 'li', function() {
//   console.log("Se hizo click sobre un li");
// });
// Fíjate que el evento lo estamos enlazando sobre ul, pero como segundo parámetro pasamos li, que es el selector sobre el que queremos que actúe el evento.
//
//
// agregar li y colocar contador en texto
// var contador = -1;
// $('button').on('click', function(event) {
//   contador++;
//   $('#prueba').append('<li id="elemento"></li>');
//   $('li#elemento:last').text("Elemento " + contador);
//   $("li#elemento:last").on('click', function(event) {
//   $(event.currentTarget).toggleClass('marked');});});


// contador de caracteres
// $('textarea').keyup(function(event){
//   var cont = $(this).val().length;
//   $('.counter').text(cont);
//     if(cont >= 81){$('.counter').css("color","red");
//     $('textarea').css("border", "5px solid red");
//     }
//     else {
//     $('.counter').css("color","#666");
//     $('textarea').css("border", "1px solid #B5B5A8");
//     }
// })


// actualizar elemento
// $(document).ready(function(){
// 	$("#input").keyup(function(){
//     $("#como").remove()
// 		var texto_escrito = $(this).val();
// 		$("#hola").html("Hola " + texto_escrito + "!");
// 	})
// })
//
// solucion de make
// $('#input').on('keyup', function(e) {
//   $('h1').html("Hola " + $(this).val() + "!");
//
//   if ($(this).val() === '') {
//     $('h1').html('¿Cómo te llamas?');
//   }
// });


// cambiar un div con una calse de color al hacerle click
// $(".blue").on("click", function() {
//     $(this).css("background", "yellow");
// });

// Agregar cuadrados en div
// $(document).ready(function() {
//   $('#append').on('click', function() {
//     var ne= $('<div class="square"></div>');
//     $('.squares').append(ne);});
//   })

// solucion de make
// $('#append').on('click', function() {
//   $('<div class="square"></div>').appendTo('.squares');
// });
