using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ServiceReference1;
public partial class Pages_product : System.Web.UI.Page
{
    Service1Client seserv = new Service1Client();
    protected void Pages_Load(object sender, EventArgs e)
    {
        if (Session["uEmail"] == null)
        {
            Response.Redirect("~/Home.aspx");
        }
        if (!IsPostBack)
        {
            GetDataItem();
        }

    }
    private void GetDataItem()
    {
        GVItem.DataSource = seserv.SelectAllItemList();
        GVItem.DataBind();
    }
    private Order FillOrderModel(GridViewRow row)
    {
        Order order = new Order();
        order.ItemId = int.Parse(row.Cells[1].Text);
        order.UserEmail = Session["uEmail"] as string;
        order.VisaNumber = "000";
        order.Qnty = 1;
        order.Price = int.Parse(row.Cells[3].Text);
        order.OrderDate = DateTime.Now.ToString();
        order.OrderStatus = "order";

        return order;
    }
    protected void GVItem_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = GVItem.SelectedRow;
        if (seserv.AddOrder(FillOrderModel(row)) > 0)
            this.Label1.Text = " one item is added ";
        else
            this.Label1.Text = "Something went wrong!  Did not add the item ";
    }
}