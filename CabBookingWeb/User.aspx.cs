using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CabBookingWeb
{
    public partial class User : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CabBookingSystem.UserClient userClient = new CabBookingSystem.UserClient();
            CabBookingSystem.User user = new CabBookingSystem.User();
            DataList1.DataSource = userClient.GetUsers();
            DataList1.DataBind();
        }
        protected void ViewUser(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            int uid = Convert.ToInt32(btn.CommandArgument);
            Session["uid"] = uid;
            Response.Redirect("ViewUser.aspx");
        }

        protected void button2_click(object sender, EventArgs e)
        {
            Response.Redirect("CreateUser.aspx");
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            CabBookingSystem.UserClient userClient = new CabBookingSystem.UserClient();
            int uid = int.Parse(TextBox1.Text);
            if (userClient.FindUser(uid) != null)
            {
                Session["uid"] = uid;
                Response.Redirect("ViewUser.aspx");
            }
            else
            {
                Label1.Text = "Enter Valid Id!!";
            }
        }
    }
}