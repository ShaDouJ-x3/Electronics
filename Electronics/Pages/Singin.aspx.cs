using System;
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

    {
    }

    {
    }

    protected void forgot_password_Click(object sender, EventArgs e)
    {
        Response.Redirect("Forgetpassword.aspx");
    }



}