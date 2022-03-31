using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CabBookingWeb
{
    public partial class Ride : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RideService.RideClient rideClient = new RideService.RideClient();
            RideService.Ride ride = new RideService.Ride();
            DataList1.DataSource = rideClient.GetRides();
            DataList1.DataBind();
        }
        protected void ViewRide(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            int rid = Convert.ToInt32(btn.CommandArgument);
            Session["rid"] = rid;
            Response.Redirect("ViewRide.aspx");
        }

        protected void button2_click(object sender, EventArgs e)
        {
            Response.Redirect("CreateRide.aspx");
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            RideService.RideClient rideClient = new RideService.RideClient();
            int rid = int.Parse(TextBox1.Text);
            if (rideClient.FindRide(rid) != null)
            {
                Session["rid"] = rid;
                Response.Redirect("ViewRide.aspx");
            }
            else
            {
                Label1.Text = "Enter Valid Id!!";
            }
        }
    }
}