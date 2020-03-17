<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster1.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="DemoWeb.Update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<table>
    <tr>
        <td>Employee no</td>
         <td>
             <asp:TextBox ID="txteno" runat="server" ClientIDMode="Static" AutoPostBack="True" OnTextChanged="txteno_TextChanged"></asp:TextBox></td>

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
             <asp:TextBox ID="txthd" runat="server" ClientIDMode="Static" TextMode="Date"></asp:TextBox></td>

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
            <asp:Button ID="btninsert" runat="server" Text="Update"  Width="105px" OnClick="btnUpdate_Click" /></td>
        <td><asp:Button id="btndelete" runat="server" Text="Delete" OnClick="btndelete_Click" Width="123px" /></td>
    </tr>
     


</table>
</asp:Content>
