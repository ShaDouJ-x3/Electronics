﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ServiceReference1;

public partial class Pages_Singin : System.Web.UI.Page
{


    Service1Client Serv = new Service1Client();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void register_Click(object sender, EventArgs e)
    {
        Response.Redirect("register.aspx");

    }


    protected void sign_in_Click(object sender, EventArgs e)
    {
        string mail = email.Text, pass = password.Text;
        if (Serv.CheckUserExist(pass, mail))
        {
            Session["email"] = mail;
            Session["password"] = pass;
            Response.Redirect("Home.aspx");
        }
    }
    protected void forgot_password_Click(object sender, EventArgs e)
    {
        Response.Redirect("forgetpassword.aspx");
    }

}