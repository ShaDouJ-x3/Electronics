<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Forgetpassword.aspx.cs" Inherits="Pages_Forgetpassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="login">

        <asp:Label runat="server" Text="email" />
        <asp:TextBox ID="email" Style="padding: 5px; margin-right: 160px;" TextMode="email" runat="server"></asp:TextBox>

        <br />

        <asp:Label ID="lblpasswordque" runat="server" Text="your question is:" Style="visibility: hidden" />
        <asp:Label ID="question" runat="server" Text="" />

        <br />

        <asp:TextBox ID="answer" runat="server" PlaceHolder="enter answer" Style="visibility: hidden;" />

        <br />

        <asp:Label ID="lblinfo" runat="server" Text="" />

        <asp:Button ID="check" runat="server" Text="check" Style="float: right;" OnClick="Check_Click" />
        <asp:Button ID="reset" runat="server" Text="reset" style="float:right; margin-right:10px; visibility:hidden;" OnClick="reset_Click" />

    </div> 
</asp:Content>

