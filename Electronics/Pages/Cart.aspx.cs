using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ServiceReference1;

public partial class Pages_Cart : System.Web.UI.Page
{
    Service1Client seserv = new Service1Client();
    protected void Page_Load(object sender, EventArgs e)
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
        string Uemail = Session["uEmail"] as string;
        GVCart.DataSource = seserv.SelectUserOrder(Uemail);
        GVCart.DataBind();

        string userEmail = Session["uEmail"] as string;
        if (seserv.SelectUserOrder(userEmail) == null)
            this.Label1.Text = " no orders";
        else
        {
            GVCart.DataSource = seserv.SelectUserOrder(userEmail);
            GVCart.DataBind();

            this.Label1.Text = seserv.TotalOrderToPay(userEmail).ToString();
            Session["totalToPay"] = this.Label1.Text;
        }
    }

    protected void GVCart_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GVCart_RowDeleting(object sender, System.Web.UI.WebControls.GridViewDeleteEventArgs e)
    {
        string uEmail = Session["uEmail"] as string;
        Service1Client srv = new Service1Client();
        int itemId = int.Parse(GVCart.Rows[e.RowIndex].Cells[0].Text);
        string orderDate = GVCart.Rows[e.RowIndex].Cells[4].Text;
        Order order = new Order();
        order.Uemail = uEmail;
        order.ItemId = itemId;
        order.OrderDate = orderDate;
        if (srv.DeleteOrder(order) > 0)
            this.lblmsg.Text = "One Order Deleted ";
        else
            this.lblmsg.Text = "Detetion failed ";
        GVCart.EditIndex = -1;
        GetDataItem();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }

}