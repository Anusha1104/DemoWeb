function Validate() {
    var username = document.getElementById("txtusername").value;
    var pwd = document.getElementById("txtpassword").value;
    if (username.length == 0 || pwd.length == 0)
    {
        alert("Enter username/password");
        //document.getElementById("lblmessage").innerHTML = "Enter username/password";
        return false;
    }
    esle
    return true;

}