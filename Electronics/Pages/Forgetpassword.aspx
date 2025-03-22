<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Forgetpassword.aspx.cs" Inherits="Pages_Forgetpassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="login">

        <asp:Label runat="server" Text="Email:" AssociatedControlID="email" />
        <asp:TextBox ID="email" Style="padding: 5px; margin-right: 160px;" TextMode="Email" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ValidationGroup="check" ID="rfvEmail" runat="server" ControlToValidate="email"
            ErrorMessage="Email is required" ForeColor="Red" Display="Dynamic" />

        <br />

        <asp:Label ID="lblpasswordque" runat="server" Text="Your question is:" />
        <asp:Label ID="question" runat="server" Text="" />

        <br />

        <asp:TextBox ID="answer" runat="server" PlaceHolder="Enter answer"></asp:TextBox>
        <asp:RequiredFieldValidator ValidationGroup="check" ID="rfvAnswer" runat="server" ControlToValidate="answer"
            ErrorMessage="Answer is required" ForeColor="Red" Display="Dynamic" />

    </div> 
    
</asp:Content>

