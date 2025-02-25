<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Pages_Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="login">
        <asp:Label runat="server" Text="Username" />
        <asp:TextBox Style="padding: 5px; margin-right: 190px;" ID="username" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvUsername" runat="server"
            ControlToValidate="username"
            ErrorMessage="Username is required!"
            ForeColor="Red"
            ValidationGroup="register" />

        <br />

        <asp:Label runat="server" Text="Email" />
        <asp:TextBox Style="padding: 5px; margin-right: 190px;" ID="email" TextMode="Email" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvEmail" runat="server"
            ControlToValidate="email"
            ErrorMessage="Email is required!"
            ForeColor="Red"
            ValidationGroup="register" />

        <br />

        <asp:Label runat="server" Text="password" Style="margin-right: 120px;" />
        <asp:Label runat="server" Text="Confirm Password" />

        <br />

        <asp:TextBox ID="password" runat="server" TextMode="Password" placeholder="Enter Password"
            AutoComplete="off" Style="width: 160px; margin-right: 35px;"></asp:TextBox>

        <asp:TextBox ID="password_confirm" runat="server" TextMode="Password" placeholder="Confirm Password"
            AutoComplete="off" Style="width: 160px; margin-right: 40px;"></asp:TextBox>
        <br />

        <asp:RequiredFieldValidator ID="rfvPassword" runat="server"
            ControlToValidate="password"
            ErrorMessage="Password is required!"
            ForeColor="Red"
            ValidationGroup="register" />

        <br />

        <asp:RequiredFieldValidator ID="rfvConfirm" runat="server"
            ControlToValidate="password_confirm"
            ErrorMessage="Confirm Password is required!"
            ForeColor="Red"
            ValidationGroup="register" />

        <br />

        <asp:Label runat="server" Text="Phone Number" />
        <asp:TextBox Style="padding: 5px; margin-right: 160px;" ID="phoneNumber" TextMode="Phone" runat="server" placeholder="enter phone number"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvPhoneNumber" runat="server"
            ControlToValidate="phoneNumber"
            ErrorMessage="Phone Number is required!"
            ForeColor="Red"
            ValidationGroup="register" />

        <br />

        <asp:Label runat="server" Text="Gender" />
        <asp:DropDownList Style="padding: 5px; margin-right: 160px;" ID="gender" runat="server">
            <asp:ListItem Text="Select Gender" Value="" />
            <asp:ListItem Text="Male" Value="Male" />
            <asp:ListItem Text="Female" Value="Female" />
            <asp:ListItem Text="Mechanic" Value="Mechanic" />
        </asp:DropDownList>

        <br />

        <asp:RequiredFieldValidator ID="rfvGender" runat="server"
            ControlToValidate="gender"
            ErrorMessage="Gender is required!"
            ForeColor="Red"
            InitialValue=""
            ValidationGroup="register" />

        <br />

        <asp:Label runat="server" Text="Date of Birth" />
        <asp:TextBox Style="padding: 5px; margin-right: 160px;" ID="dob" TextMode="Date" runat="server"></asp:TextBox>

        <br />

        <asp:RequiredFieldValidator ID="rfvDOB" runat="server"
            ControlToValidate="dob"
            ErrorMessage="Date of Birth is required!"
            ForeColor="Red"
            ValidationGroup="register" />

        <br />

        <asp:Label runat="server" Text="Country" />
        <asp:DropDownList Style="padding: 5px; margin-right: 160px;" ID="country" runat="server">
            <asp:ListItem Text="Select Country" Value="" />
            <asp:ListItem Text="USA" Value="USA" />
            <asp:ListItem Text="Canada" Value="Canada" />
            <asp:ListItem Text="UK" Value="UK" />
            <asp:ListItem Text="Australia" Value="Australia" />
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvCountry" runat="server"
            ControlToValidate="country"
            ErrorMessage="Country is required!"
            ForeColor="Red"
            InitialValue=""
            ValidationGroup="register" />

        <br />


        <br />
                <asp:Label runat="server" Text="Security Question" />
        <asp:DropDownList Style="padding: 5px; margin-right: 160px;" ID="securityQuestion" runat="server">
            <asp:ListItem Text="Select a question" Value="" />
            <asp:ListItem Text="What is your pet's name?" Value="pet" />
            <asp:ListItem Text="What is your mother's maiden name?" Value="mother" />
            <asp:ListItem Text="What city were you born in?" Value="birthCity" />
            <asp:ListItem Text="What is your favorite book?" Value="book" />
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvsecurityQuestion" runat="server"
            ControlToValidate="securityQuestion"
            ErrorMessage="question is required!"
            ForeColor="Red"
            ValidationGroup="register" />

        <br />
        <br />

        <asp:Label runat="server" Text="Your Answer" />
        <asp:TextBox Style="padding: 5px; margin-right: 160px;" ID="securityAnswer" runat="server" Placeholder="Enter your answer"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvsecurityAnswer" runat="server"
            ControlToValidate="securityAnswer"
            ErrorMessage="answer is required!"
            ForeColor="Red"
            ValidationGroup="register" />

        <br />
        <br />

        <asp:Button ID="register" runat="server" Text="register" Style="margin-right: 10px;" ValidationGroup="register" />

        <asp:Button ID="sign_in" runat="server" Text="sgin in" />

    </div>
</asp:Content>
