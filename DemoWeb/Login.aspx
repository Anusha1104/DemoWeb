<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DemoWeb.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script src="Scripts/LoginValidations.js"></script>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td style="width: 134px; height: 48px">Username</td>
            <td style="height: 48px">
                <asp:TextBox ID="txtusername" runat="server" style="margin-left: 2px" ClientIDMode="Static"></asp:TextBox></td>
           <%-- <td style="height: 48px"></td>--%>
        </tr>

        <tr>
            <td style="width: 134px; height: 48px">Password</td>
            <td style="height: 48px">
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" ClientIDMode="Static"></asp:TextBox></td>
        </tr>

        <tr>
            <td style="width: 134px; height: 25px">
                <asp:Label ID="lblmessage" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td style="height: 25px">
                </td>
        </tr>

        <tr>
            <td style="width: 134px">
                <asp:Button ID="btnlogin" runat="server" Text="Login"  Width="131px" OnClientClick="return Validate();" OnClick="btnlogin_Click"/></td>
        </tr>
    </table>

</asp:Content>
