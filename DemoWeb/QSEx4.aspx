<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QSEx4.aspx.cs" Inherits="DemoWeb.QSEx4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script lang="javascript" type="text/javascript">
        function func() {
            alert("HI");
            //window.location.href = "QSEx5.aspx";
            window.open('QSEx5.aspx?A=10&B=20');
           
        }
    </script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="Button" onclientclick="func();"/>
        </div>
    </form>
</body>
</html>
