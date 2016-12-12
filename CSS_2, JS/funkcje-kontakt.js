function emailFocus() {
  var emailInput = document.forms.item(0).elements.item(3);
  emailInput.value = "";
}

function emailBlur() {
  var emailInput = document.getElementsByTagName("input")[3];
  if (emailInput.value == "") {
    emailInput.value = "john@appleseed.com";
  }
}

function formBlur() {
  var form = document.forms[0];
  if (confirm("wyslij wiadomosc?")) {
    form.submit();
  }
}

function keyPressedInInput(event) {
    var key = event.keyCode;
    if (key == 67 && event.shiftKey) {
      document.forms.item(0).reset();
    }
}
