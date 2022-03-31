using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CabBookingWeb
{
    public partial class ViewRide : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RideService.RideClient rideClient = new RideService.RideClient();
            if (!IsPostBack)
            {

                if (Session["rid"] != null)
                {
                    var id = Convert.ToInt32(Session["rid"]);
                    var ride = rideClient.FindRide(id);
                    TextBox1.Text = ride.rideId.ToString();
                    TextBox2.Text = ride.userId.ToString();
                    TextBox3.Text = ride.driverId.ToString();
                    TextBox4.Text = ride.from;
                    TextBox5.Text = ride.to;
                }
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Remove("rid");
            Response.Redirect("Ride.aspx");
        }
        protected void DeleteRide(object sender, EventArgs e)
        {
            RideService.RideClient rideClient = new RideService.RideClient();
            if (rideClient.DeleteRide(Convert.ToInt32(Session["rid"])))
            {
                Session.Remove("rid");
                Response.Redirect("Ride.aspx");
            }
        }
        protected void UpdateRide(object sender, EventArgs e)
        {
            RideService.RideClient rideClient = new RideService.RideClient();

            RideService.Ride ride = new RideService.Ride
            {
                rideId = int.Parse(TextBox1.Text),
                userId = int.Parse(TextBox2.Text),
                driverId = int.Parse(TextBox3.Text),
                from = TextBox4.Text,
                to = TextBox5.Text
            };
            if (rideClient.UpdateRide(ride))
            {
                Label1.Text = "Ride Updated Successfully!!";
            }

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Ride.aspx");
        }
    }
}