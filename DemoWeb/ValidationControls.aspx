<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster1.Master" AutoEventWireup="true" CodeBehind="ValidationControls.aspx.cs" Inherits="DemoWeb.ValidationControls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
<tr>
    <td>Employee No</td>
    <td>
        <asp:TextBox ID="txtempno" runat="server"></asp:TextBox></td>
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Cannot be Blank" ControlToValidate="txtempno" ForeColor="Red" Display="None"></asp:RequiredFieldValidator></td>

</tr>

<tr>
    <td>Employee Name</td>
    <td>
        <asp:TextBox ID="txtename" runat="server"></asp:TextBox></td>
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="cannot be blank" ControlToValidate="txtename" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
        </td>
</tr>

<tr>
    <td>Password</td>
    <td>
        <asp:TextBox ID="txtpswrd" runat="server" TextMode="Password"></asp:TextBox></td>
    <td>
        </td>
</tr>

<tr>
    <td>Confirm Password</td>
    <td>
        <asp:TextBox ID="txtCP" runat="server" TextMode="Password"></asp:TextBox></td>
    <td><asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password doesnot match" ControlToCompare="txtpswrd" ControlToValidate="txtCP" ForeColor="Red" Display="None"></asp:CompareValidator></td>
</tr>


<tr>
    <td>Salary</td>
    <td>
        <asp:TextBox ID="txtsal" runat="server"></asp:TextBox></td>
    <td>
        
        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage=" Salary between 10000 and 200000" ControlToValidate="txtsal" MaximumValue="200000" MinimumValue="10000" Type="Double" ForeColor="Red" Display="None"></asp:RangeValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtsal" Display="None" ErrorMessage="sal cannot be blank" ForeColor="Red"></asp:RequiredFieldValidator>
    </td>
</tr>

<tr>
    <td>Pancard</td>
    <td>
        <asp:TextBox ID="txtpancard" runat="server"></asp:TextBox></td>
    <td>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="invalid pancard no" ControlToValidate="txtpancard" ForeColor="Red" ValidationExpression="^[A-Z]{5}[0-9]{4}[A-z]$" Display="None"></asp:RegularExpressionValidator></td>
</tr>

<tr>

    <td>DOB</td>
    <td>
        <asp:TextBox ID="txtdob" runat="server" TextMode="Date"></asp:TextBox></td>
    <td>
        <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Age must be between 21 and 25" ControlToValidate="txtdob" Display="None" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator></td>

</tr>


<tr>
  <td>
      <asp:Button ID="Button1" runat="server" Text="Button" Width="98px" OnClick="Button1_Click" /></td>
  </tr>




</table>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
</asp:Content>
