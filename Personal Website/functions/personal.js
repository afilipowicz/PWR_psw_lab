function checkIfLogged() {
    var cookie = getCookie("Zalogowany");
    if(!(cookie.localeCompare("") == 0)){
        document.getElementById("logIn").innerHTML = "WYLOGUJ";
        //document.getElementById("content").style.visibility = "visible";
        document.getElementById("alert").style.visibility = "hidden";
        document.getElementById("content").style.display = "inline";
        document.getElementByid("logowanie").setAttribute("href", "#");
        document.getElementByid("logowanie").setAttribute("onclick", "logOut();");
    }else {
        //document.getElementById("content").style.visibility = "hidden";
        document.getElementById("alert").style.visibility = "visible";

        document.getElementById("content").style.display = "none";
    }
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

function logOut() {
    document.cookie = "Zalogowany" + '=;expires=Thu, 01 Jan 1970 00:00:01 GMT;';
}
