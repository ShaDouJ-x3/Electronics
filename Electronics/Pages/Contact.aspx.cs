﻿using ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class Contact : System.Web.UI.Page
{
    Service1Client serv = new Service1Client();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Send_Click(object sender, EventArgs e)
    {
        MailBox mail = new MailBox()
        {
            msgBody = message.Text,
            msgSubject = subject.Text,
            msgDate = DateTime.Now.ToString("d"),
            msgRead = false,
            SenderEmail = email.Text,
            SenderName = name.Text,
        };
        serv.AddMassage(mail);
    }
}