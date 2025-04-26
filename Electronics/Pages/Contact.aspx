<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <!-- contact -->
    <div class="contact">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="titlepage">
                        <h2>Contact us</h2>
                    </div>
                    <form class="main_form">
                        <div class="row">
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                                <asp:textbox id="name" runat="server" class="form-control" placeholder="Your name" type="text" name="Your Name"/>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                                <asp:textbox id="email" runat="server" class="form-control" placeholder="Email" type="text" name="Email"/>
                            </div>
                            <div class=" col-md-12">
                                <asp:textbox id="subject" runat="server" class="form-control" placeholder="subject" type="text" name="subject"/>
                            </div>
                            <div class="col-md-12">
                                <asp:textbox id="message" runat="server" class="textarea" placeholder="Message"></asp:textbox>
                            </div>
                            <div class=" col-md-12">
                                <button class="send">Send</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- end contact -->

</asp:Content>

