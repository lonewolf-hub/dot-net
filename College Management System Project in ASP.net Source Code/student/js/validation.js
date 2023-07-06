//validation of text//
function isNumber(evt) {
    var charCode = (evt.which) ? evt.which : event.keyCode
    if ((charCode >= 48 && charCode <= 57) || charCode == 8)
        return true;

    return false;
}
///validation of number//
function isNumberKey(evt) {
    var charCode = (evt.which) ? evt.which : event.keyCode
    if ((charCode > 31 || charCode == 8) && (charCode < 48 || charCode > 57))
        return true;
    return false;
}
//function for other/
function isNumbero(evt) {
    var charCode = (evt.which) ? evt.which : event.keyCode
    if ((charCode >= 48 && charCode <= 57) || charCode == 8)
        return true;

    return false;
}