<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="product.aspx.cs" Inherits="Pages_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align:center;">
     <asp:Label ID="lblTitle" runat="server" Text="Item Details"></asp:Label>
         </div>
    <div style="align-content:center; text-align : center ;">
        <asp:GridView ID="GVItem" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan"
            BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" AutoGenerateColumns="False" 
            DataKeyNames="ItemCode" Width ="600"
            OnSelectedIndexChanged="GVItem_SelectedIndexChanged" >
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                 <asp:CommandField SelectText="Ad to Cart" ShowSelectButton="True" />
                <asp:BoundField DataField="ItemCode" HeaderText="ItemCode" ReadOnly="True" SortExpression="ItemCode" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:TemplateField HeaderText="Item image">
                    <ItemTemplate>
                        <asp:Image ID="ItemImage" runat="server" Height="100"
                            width="100" ImageAlign ="Middle" 
                            ImageUrl='<%# DataBinder.Eval (Container.DataItem ,"ItemImg","{0}") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
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
        <br />
        <br />
        <br />
   <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </div>
</asp:Content>

