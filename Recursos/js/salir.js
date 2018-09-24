/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function salir(){
    $.ajax({
        url:'../Controlador/usuario.php',
        type:'POST',
        data:"button=salir"
    }).done(function($respuesta){
        location.href = '../vistas/';
    });
}
