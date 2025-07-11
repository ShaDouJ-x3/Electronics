﻿using ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_phone : System.Web.UI.Page
{
    Service1Client serv = new Service1Client();
    protected void Page_Load(object sender, EventArgs e)
    {

        int id = int.Parse(Page.RouteData.Values["id"].ToString());
        Item item = new Item();
        item = serv.SelectItemByID(id);
        name.Text = item.Name;
        description.Text = item.Description;
        quantity.Text = item.Quantity.ToString();
        price.Text = item.Price.ToString();
        category.Text = item.Category;
        Image1.ImageUrl = item.ItemImg;
    }

    protected void cart_Click(object sender, EventArgs e)
    {
        int id = int.Parse(Page.RouteData.Values["id"].ToString());
        
        Item item = serv.SelectItemByID(id);
        serv.AddItemToCart(Session["email"].ToString(), item);

    }
}