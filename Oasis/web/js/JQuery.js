$(document).ready(function(){
    $('.menu li:has(ul)').click(function(){
      
        if ($(this).hasClass('activado')){        
            $(this).children('ul').slideUp();
            $(this).removeClass('activado');
           
        }else{
            $('.menu li ul').slideUp();
            $('.menu li').removeClass('activado');
            $(this).addClass('activado');           
            $(this).children('ul').slideDown();
        }
    }) ;      
    
});







