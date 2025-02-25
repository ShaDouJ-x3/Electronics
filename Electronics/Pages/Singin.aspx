<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Singin.aspx.cs" Inherits="Pages_Singin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin-right:0px; margin-left: 45%; margin-top:100px;">
        
        <asp:Label runat="server" Text="email" />
        <asp:TextBox Style="padding: 5px; margin-right: 160px;" ID="email" TextMode="email" runat="server"></asp:TextBox>

        <br />
        <br />

        <asp:Label runat="server" Text="password" />
        <asp:TextBox Style="padding: 5px; margin-right: 160px;" ID="password" TextMode="Password" runat="server"></asp:TextBox>

        <br />
        <br />

        <asp:Button ID="sign_in" runat="server" Text="sign in" Style="margin-right: 10px; height: 28px;" OnClick="sign_in_Click"  />
        <asp:Button ID="register" runat="server" Text="register" style="margin-right:10px;" OnClick="register_Click"  />
        <asp:Button ID="forgot_password" runat="server" Text="forgot password" OnClick="forgot_password_Click" />
        </div>
</asp:Content>

