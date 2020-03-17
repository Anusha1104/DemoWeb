<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="DemoWeb.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script lang="Javascript" type="text/javascript">
        function Validate()
        {
            var empno = document.getElementById("txtempno").value;
            var ename = document.getElementById("txtename").value;
            var job = document.getElementById("txtjob").value;
            var mgrid = document.getElementById("txtmid").value;
            var hiredt = document.getElementById("txthiredate").value;
            var sal = document.getElementById("txtsal").value;
            var comm = document.getElementById("txtcomm").value;
            var deptno = document.getElementById("txtdeptno").value;
            
            if (empno.length != 0 && ename.length != 0 && job.length != 0 && mgrid.length != 0 && hiredt.length != 0 && sal.length != 0 && comm.length != 0 && deptno.length != 0)
                return true;
            else
                alert("Enter all details");
                return false;
        }
        </script>
    
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 193px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 46%;">
                <tr>
                    <td class="auto-style1">Employee No</td>
                    <td>
                        <asp:TextBox ID="txtempno" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Employee Name</td>
                    <td>
                        <asp:TextBox ID="txtename" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Job</td>
                    <td>
                        <asp:TextBox ID="txtjob" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Manager Id</td>
                    <td>
                        <asp:TextBox ID="txtmid" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">HiredDate</td>
                    <td>
                        <asp:TextBox ID="txthiredate" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Salary</td>
                    <td>
                        <asp:TextBox ID="txtsal" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Commission</td>
                    <td>
                        <asp:TextBox ID="txtcomm" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Dept No</td>
                    <td>
                        <asp:TextBox ID="txtdeptno" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="btnsubmit" runat="server" Text="Button" Width="180px" OnClientClick="return Validate();" OnClick="btnsubmit_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            
        </div>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
