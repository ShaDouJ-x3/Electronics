<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Pages_Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            margin-left: 200px;
        }
        .auto-style3 {
            color: #33CC33;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style3">
                <h2><strong>&nbsp;Shopping Cart</strong></h2>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">
                <asp:GridView ID="GVCart" runat="server" AutoGenerateColumns="False" 
                    BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                    CellPadding="2" DataKeyNames="ItemId,Uemail,OrderDate"
         ForeColor="Black" GridLines="None" OnSelectedIndexChanged="GVCart_SelectedIndexChanged" 
                    Width="600 px" OnRowDeleting="GVCart_RowDeleting">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
           
            <asp:BoundField DataField="ItemId" HeaderText="ItemId" ReadOnly="True" SortExpression="ItemId" />
            <asp:BoundField DataField="VisaNumber" HeaderText="VisaNumber" SortExpression="VisaNumber" />
            <asp:BoundField DataField="Qnty" HeaderText="Qnty" SortExpression="Qnty" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" SortExpression="OrderDate" />
            <asp:CommandField DeleteText="Remover Item" ShowDeleteButton="True">
            <ItemStyle ForeColor="Red" />
            </asp:CommandField>
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
            </td>
        </tr>
        <tr>
            <td> 
    <asp:Button ID="Button1" runat="server" Text="Checkout" PostBackUrl="~/Checkout.aspx" OnClick="Button1_Click"  />
            </td>
            <td class="auto-style2">
                &nbsp;
    <asp:Label ID="Label1" runat="server" Text="Total To Pay"></asp:Label> 
    &nbsp;&nbsp;&nbsp; 
    <asp:Label ID="Label2" runat="server" Text="0"></asp:Label> 
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">
    <asp:Label ID="lblmsg" runat="server" ></asp:Label>
            </td>
        </tr>
    </table>
    <br />
</asp:Content>

