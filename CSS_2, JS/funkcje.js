function addZainteresowaniaIHobby() {
  "use strict";
  document.getElementById("DodajZawartosc").hidden = "";
  document.getElementById("ZainteresowaniaHobby").innerHTML = "Zainteresowania i hobby";
}

function insertHobbyText() {
  var text = prompt("Wprowadz text", "text");
  if (text != null) {
    document.getElementById("HobbyParagraph").innerHTML = text;
  }
}

function displayAlertAfterRandomTime() {
  var time = Math.floor((Math.random() * 15) + 5) * 1000;
  setTimeout(function () {
    if (window.confirm('Widzę, że spędziłeś na mojej stronie już trochę czasu. Może chcesz mnie zatrudnić?')) {
      window.prompt("Zostaw swój email, skontaktuję się do dwóch dni.");
    } else {
      window.alert("Nic nie szkodzi, miłego dnia ;)");
    }
  }, time);
}

function changeImageSource() {
  var newSrc = window.prompt("Podaj nowy link do zdjęcia");
  document.getElementById("profilePhoto").src = newSrc;
}

function addParagraph(){
	var par = document.createElement("P");
    var br = document.createElement("br");
	par.appendChild(br);
	document.getElementById("header").appendChild(par);
}

function changeBackgroundColour(){
	var inputColor = prompt("Wprowadz nazwe koloru tla dla tej strony");
	document.getElementById("header").setAttribute("style", "background-color: " + inputColor);
}
