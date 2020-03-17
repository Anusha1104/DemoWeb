<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster1.Master" AutoEventWireup="true" CodeBehind="Extract.aspx.cs" Inherits="DemoWeb.Extract" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Enter the Deptno:<asp:DropDownList id="ddldeptno" runat="server" AppendDataBoundItems="True" AutoPostBack="True" OnSelectedIndexChanged="ddldeptno_SelectedIndexChanged1">
        <asp:ListItem Value="-1">Select</asp:ListItem>
        </asp:DropDownList>
        <asp:Button runat="server" Text="Button" OnClick="btn_Click"  /> </h2>
    <asp:GridView runat="server" id="gvdata"></asp:GridView>
</asp:Content>
