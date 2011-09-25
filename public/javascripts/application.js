// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

//Verifica a URL atual e seleciona o item do menu de navegacao correspondente ao local que o usuario se encontra
function syncNav() {
  var pathname;
  pathname = window.location.pathname;
  
  if (pathname.indexOf('noticias') != -1 || pathname.indexOf('news') != -1) 
    $('#nav-noticias').addClass('active');
  else if (pathname.indexOf('temas') != -1 || pathname.indexOf('subjects') != -1) 
    $('#nav-temas').addClass('active');
  else if (pathname.indexOf('contato') != -1 || pathname.indexOf('contacts') != -1) 
    $('#nav-contato').addClass('active');
  else 
    $('#nav-inicio').addClass('active');
}

//Verifica a letra passada por parametro e seleciona o item correspondente do menu de paginacao por letra
function syncLetterPagination(letter) {
  
  if (letter != '') {
    $('#letter_'.concat(letter)).addClass('active');
  }
  else
    $('#letter_todos').addClass('active');
}
