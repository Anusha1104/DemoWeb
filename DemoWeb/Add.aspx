<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster1.Master" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="DemoWeb.Add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
    <tr>
        <td>Employee no</td>
         <td>
             <asp:TextBox ID="txteno" runat="server" ClientIDMode="Static"></asp:TextBox></td>

    </tr>
     <tr>
        <td>Employee Name</td>
         <td>
             <asp:TextBox ID="txtename" runat="server" ClientIDMode="Static"></asp:TextBox></td>

    </tr>
     <tr>
        <td>Job</td>
         <td>
             <asp:TextBox ID="txtjob" runat="server" ClientIDMode="Static"></asp:TextBox></td>

    </tr>
     <tr>
        <td>Manager Id</td>
         <td>
             <asp:TextBox ID="txtmgrid" runat="server" ClientIDMode="Static"></asp:TextBox></td>

    </tr>
     <tr>
        <td>Hiredate</td>
         <td>
             <asp:TextBox ID="txthd" runat="server" ClientIDMode="Static"></asp:TextBox></td>

    </tr>
     <tr>
        <td>Salary</td>
         <td>
             <asp:TextBox ID="txtsal" runat="server" ClientIDMode="Static"></asp:TextBox></td>

    </tr>
     <tr>
        <td>Commission</td>
         <td>
             <asp:TextBox ID="txtcomm" runat="server" ClientIDMode="Static"></asp:TextBox></td>

    </tr>
     <tr>
        <td>Dept No</td>
         <td>
             <asp:TextBox ID="txtdeptno" runat="server" ClientIDMode="Static"></asp:TextBox></td>

    </tr>
   
    <tr>
        <td>
            <asp:Button ID="btninsert" runat="server" Text="Insert" OnClick="btninsert_Click" Width="105px" OnClientClick="return Validate();"/></td>
        <td><asp:Button ID="Button1" runat="server" Text="Insert With SP" OnClick="Button1_Click" /></td>
    </tr>
        
    


</table>
     <div id="div1" ><asp:Label ID="label" runat="server" Text=""></asp:Label></div>
</asp:Content>


