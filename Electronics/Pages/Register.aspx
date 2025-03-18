<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Pages_Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="login">
            ForeColor="Red"
            ValidationGroup="register"
            Style="margin-right: 55px" />


        <asp:RequiredFieldValidator ID="rfvlast_name" runat="server"
            ControlToValidate="last_name"
            ErrorMessage="Last name is required!"
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

        <br />

        <asp:RequiredFieldValidator ID="rfvConfirm" runat="server"
            ControlToValidate="password_confirm"
            ForeColor="Red"
            ValidationGroup="register" />

        <br />

        <asp:Label runat="server" Text="Phone Number" />
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
            <asp:ListItem Text="What is your pet's name?" Value="pet" />
            <asp:ListItem Text="What is your mother's maiden name?" Value="mother" />
            <asp:ListItem Text="What city were you born in?" Value="birthCity" />
            <asp:ListItem Text="What is your favorite book?" Value="book" />
        </asp:DropDownList>

        <br />

        <asp:RequiredFieldValidator ID="rfvsecurityQuestion" runat="server"
            ControlToValidate="securityQuestion"
            ErrorMessage="question is required!"
            ForeColor="Red"
            ValidationGroup="register" />

        <br />
        <br />

        <asp:TextBox Style="padding: 5px; margin-right: 160px;" ID="securityAnswer" runat="server" Placeholder="Enter your answer"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvsecurityAnswer" runat="server"
            ControlToValidate="securityAnswer"
            ErrorMessage="answer is required!"
            ForeColor="Red"
            ValidationGroup="register" />

        <br />
        <br />



        <asp:Button ID="sign_in" runat="server" Text="sgin in" class="login_btn" OnClick="sgin_in_Click" />
    </div>
</asp:Content>
