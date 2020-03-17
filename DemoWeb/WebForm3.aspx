<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster1.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="DemoWeb.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
    <tr>
        <td>
        <asp:RadioButton ID="rdbhiredate" groupname="g1" runat="server" Text="Joining Date" OnCheckedChanged="rdbhiredate_CheckedChanged" AutoPostBack="True" />
        </td>
        <td>
            <asp:TextBox ID="txtstart" runat="server" TextMode="Date"></asp:TextBox>
            and
            <asp:TextBox ID="txtend" runat="server" TextMode="Date"></asp:TextBox>
        </td></tr>
    <tr><td>
        <asp:RadioButton ID="rdbdeptno" groupname="g1" runat="server" Text="Dept no" AutoPostBack="True" OnCheckedChanged="rdbdeptno_CheckedChanged" />
        </td><td>
            <asp:DropDownList ID="ddldeptno" runat="server" AppendDataBoundItems="True">
                <asp:ListItem Value="-1">Select</asp:ListItem>
            </asp:DropDownList>
        </td></tr>
        <tr><td>
            <asp:Button ID="btnextract" runat="server" Text="Extract" OnClick="btnextract_Click" Width="99px" />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Extract (EF)" />
            </td></tr>

</table>
   
    <asp:GridView ID="gvdata" runat="server"></asp:GridView>
</asp:Content>
