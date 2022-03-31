using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CabBookingWeb
{
    public partial class ViewUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CabBookingSystem.UserClient userClient = new CabBookingSystem.UserClient();
            if (!IsPostBack)
            {

                if (Session["uid"] != null)
                {
                    var id = Convert.ToInt32(Session["uid"]);
                    var user = userClient.FindUser(id);
                    TextBox13.Text = user.userId.ToString();
                    TextBox1.Text = user.first_name;
                    TextBox2.Text = user.last_name;
                    TextBox3.Text = user.gender;
                    TextBox4.Text = user.age.ToString();
                    TextBox5.Text = user.address;
                    TextBox6.Text = user.mobile;
                    TextBox7.Text = user.email;
                    RadioButton1.Checked = user.is_driver;
                    RadioButton2.Checked = !user.is_driver;
                }
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Remove("uid");
            Response.Redirect("User.aspx");
        }
        protected void DeleteUser(object sender, EventArgs e)
        {
            CabBookingSystem.UserClient userClient = new CabBookingSystem.UserClient();
            if (userClient.DeleteUser(Convert.ToInt32(Session["uid"])))
            {
                Session.Remove("uid");
                Response.Redirect("User.aspx");
            }
        }
        protected void UpdateUser(object sender, EventArgs e)
        {
            CabBookingSystem.UserClient userClient = new CabBookingSystem.UserClient();

            CabBookingSystem.User user = new CabBookingSystem.User
            {
                userId = int.Parse(TextBox13.Text),
                first_name = TextBox1.Text,
                last_name = TextBox2.Text,
                gender = TextBox3.Text,
                age = int.Parse(TextBox4.Text),
                address = TextBox5.Text,
                mobile = TextBox6.Text,
                email = TextBox7.Text
            };
            if (userClient.UpdateUser(user))
            {
                Label1.Text = "User Updated Successfully!!";
            }

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("User.aspx");
        }
    }
}