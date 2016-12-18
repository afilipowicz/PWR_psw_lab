﻿function checkIfLogged() {
    var cookie = getCookie("Zalogowany");
    if(!(cookie.localeCompare("") == 0)){
        document.getElementById("Logowanie").innerHTML = "Zalogowany jako:" + cookie;
        document.getElementById("CV").style.visibility = "visible";
    }else
        document.getElementById("CV").style.visibility = "hidden";
}

function getCookie(cname) {
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for(var i = 0; i <ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') {
            c = c.substring(1);
        }
        if (c.indexOf(name) == 0) {
            return c.substring(name.length, c.length);
        }
    }
    return "";
}