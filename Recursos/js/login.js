function confirmar(){
	var usuario = $('#usuario').val();
	var contrasena = $('#contrasena').val();
	//alert(usuario + contrasena);
	$.ajax({
		url:'../Controlador/usuario.php',
		type:'POST',
		data:'usuario='+usuario+"&button=ingresar"+'&contrasena='+contrasena
	}).done(function(respuesta){
            //alert(respuesta);
            if (respuesta == '0') {
                alert('usuario o contraseña incorecta');
            }else{
                location.href = './inicio_admin.php';
            }
		
	});
}
