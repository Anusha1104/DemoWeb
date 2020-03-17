<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster1.Master" AutoEventWireup="true" CodeBehind="AddEmp.aspx.cs" Inherits="DemoWeb.AddEmp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Scripts/InsertEmpValidations.js"></script>
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
        
    </tr>
     <tr>
        <td>
            <div id="div1" ><asp:Label ID="messagelabel" runat="server" Text=""></asp:Label></div></td>
    </tr>


</table>
</asp:Content>
