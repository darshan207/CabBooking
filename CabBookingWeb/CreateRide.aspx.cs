using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CabBookingWeb
{
    public partial class CreateRide : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            RideService.RideClient rideClient = new RideService.RideClient();
            RideService.Ride ride = new RideService.Ride
            {
                userId = int.Parse(TextBox2.Text),
                driverId = int.Parse(TextBox3.Text),
                from = TextBox4.Text,
                to = TextBox5.Text
            };
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            if (rideClient.AddRide(ride))
            {
                Label1.Text = "Ride Added Successfully!!";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Ride.aspx");
        }
    }
}