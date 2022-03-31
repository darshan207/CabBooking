using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CabBookingWeb
{
    public partial class CreateUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            CabBookingSystem.UserClient userClient = new CabBookingSystem.UserClient();
            bool driver = false;
            if(RadioButton1.Checked) driver = true;
            CabBookingSystem.User user = new CabBookingSystem.User
            {
                first_name = TextBox1.Text,
                last_name = TextBox2.Text,
                gender = TextBox3.Text,
                age = int.Parse(TextBox4.Text),
                address = TextBox5.Text,
                mobile = TextBox6.Text,
                email = TextBox7.Text,
                is_driver = driver
            };
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            if (userClient.AddUser(user))
            {
                Label1.Text = "Patient Added Successfully!!";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("User.aspx");
        }
    }
}