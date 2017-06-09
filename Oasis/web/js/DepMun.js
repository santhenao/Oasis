



function verifica(e) { 

if ((document.formulario.campo.value == "") || (document.formulario.campo.value== null)) { 
alert("Debe ingresar algo en el campo 1"); 
document.formulario.campo.focus(); 
return false; 
} 
else 
if ((document.formulario.campo2.value == "") || (document.formulario.campo2.value== null)) { 
alert("Debe ingresar algo en el campo 2"); 
document.formulario.campo2.focus(); 
return false; 
} 
else 
if ((document.formulario.campo3.value == "") || (document.formulario.campo3.value== null)) { 
alert("Debe ingresar algo en el campo 3"); 
document.formulario.campo3.focus(); 
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






