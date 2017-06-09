$(document).ready(function () {
    $("input[name=textcontrasena1]").blur(function () {
        ComprobarClave();
    });
    $("input[name=textcontrasena]").blur(function () {
        ComprobarClave2();
    });
});
function ComprobarClave() {
    pass1 = $("input[name=textcontrasena]").val();
    pass2 = $("input[name=textcontrasena1]").val();

    if (pass1 == "" && pass2 == "") {
        $("#Res").html("Contraseñas Requeridas.");
        $("#contrasena").css("border-color", "red");
        $("#contrasena1").css("border-color", "red");
        $("#Res").css("color", "red");
    } else {
        if (pass1 == pass2) {
            $("#Res").html("Contraseñas Correctas. ");
            $("#contrasena").css("border-color", "blue");
            $("#contrasena1").css("border-color", "blue");
            $("#Res").css("color", "blue");
        } else {
            $("#Res").html("Contraseñas no Coinciden. ");
            $("#contrasena").css("border-color", "red");
            $("#contrasena1").css("border-color", "red");
            $("#Res").css("color", "red");
        }
    }

}