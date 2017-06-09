function soloLetras(e) {
    
    key = e.keyCode || e.which;
    tecla = String.fromCharCode(key).toString();
    letras = " áéíóúabcdefghijklmnñopqrstuvwxyzÁÉÍÓÚABCDEFGHIJKLMNÑOPQRSTUVWXYZ";//Se define todo el abecedario que se quiere que se muestre.
    especiales = [8, 37, 39, 46, 6, 107]; //Es la validación del KeyCodes, que teclas recibe el campo de texto.

    tecla_especial = false
    for(var i in especiales) {
        if(key == especiales[i]) {
            tecla_especial = true;
            break;
        }
    }

    if(letras.indexOf(tecla) == -1 && !tecla_especial){
          alert('Tecla no aceptada');
        return false;
      }
}

function SoloNumeros(evt){
 if(window.event){
  keynum = evt.keyCode; //IE
 }
 else{
  keynum = evt.which; //FF
 } 
 //comprobamos si se encuentra en el rango numérico y que teclas no recibirá.
 if((keynum > 47 && keynum < 58) || keynum == 8 || keynum == 13 || keynum == 6 || keynum == 107 ){
  return true;
  
 }
 else{
  return false;
  
 }
}


function ValidarCorreo() {
    var correo = document.getElementsByName("correoCliente").value();
     caracteresPermitidos = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    if (!caracteresPermitidos.test(correo)){
        alert("Error: La dirección de correo " + correo + " es incorrecta.");
  

				
			}
 
 function tel(evt){
   
  var numerotelefono=document.getElementById('id_telefono');
  var expresion1=/^([0-9+]){9}$/;// valida numero
  var expresion2 =/\s/;
  if( numerotlefon.value==''){
alert('Campo obligatorio');     
  }else if(expresion2.test(numerotelefono.value))
alert('error existen espacion en blanco');
if(!expresion1.text(numerotelefono.value))
    alert('numero telefono incorrecto');
  }
}
 
 

 
 


