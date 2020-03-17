<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster1.Master" AutoEventWireup="true" CodeBehind="orderinfo.aspx.cs" Inherits="DemoWeb.orderinfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="gvdata" runat="server" PageSize="1" AllowPaging="True" OnPageIndexChanging="gvdata_PageIndexChanging"></asp:GridView>
    <asp:DetailsView ID="dview" runat="server" Height="50px" Width="125px" AllowPaging="true" OnPageIndexChanging="dview_PageIndexChanging"></asp:DetailsView>
    <asp:FormView ID="FormView1" runat="server" OnPageIndexChanging="FormView1_PageIndexChanging" AllowPaging="true">
        <ItemTemplate>
            <table style="width: 99%; height: 38px">
                <tr>
                    <td>OrderId</td>
                    <td>OrderDesc</td>
                    <td>TotalCost</td>
                    <td style="width: 67px">DiscountAmt</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("orderid") %>'></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("orderdesc") %>'></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("totalcost") %>'></asp:Label>
                    </td>
                    <td style="width: 67px">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("discountamt") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:FormView>
</asp:Content>
