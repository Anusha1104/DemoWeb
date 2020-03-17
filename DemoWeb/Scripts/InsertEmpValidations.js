function Validate() {
    var eno = document.getElementById("txteno").value;
    var ename = document.getElementById("txtename").value;
    var job = document.getElementById("txtjob").value;
    var mgr = document.getElementById("txtmgrid").value;
    var hirdate = document.getElementById("txtmgrid").value;
    var sal = document.getElementById("txtsal").value;
    var comm = document.getElementById("txtsal").value;
    var deptno = document.getElementById("txtdeptno").value;
  
    if (eno.length == 0 || ename.length == 0 || job.length == 0 || mgr.length == 0 || hiredate.length == 0 || sal.length == 0 || comm.length == 0 || deptno.length == 0) {
        //alert("Enter all details");
        document.getElementById("div1").innerHTML = "Enter all details";
        return false;
    }
    esle
    return true;

}