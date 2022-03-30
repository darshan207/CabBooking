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
           
        }

        protected void address_TextChanged(object sender, EventArgs e)
        {
            CabBookingSystem.UserClient user = new CabBookingSystem.UserClient();
            
        }

        protected void age_TextChanged(object sender, EventArgs e)
        {

        }

        protected void email_TextChanged(object sender, EventArgs e)
        {

        }

        protected void firstname_TextChanged(object sender, EventArgs e)
        {

        }

        protected void lsatname_TextChanged(object sender, EventArgs e)
        {

        }

        protected void mobile_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            CabBookingSystem.UserClient userClient = new CabBookingSystem.UserClient();
            CabBookingSystem.User user = new CabBookingSystem.User();
            user.first_name = firstname.Text;
            user.last_name = lsatname.Text;
            user.address = address.Text;
            user.mobile = mobile.Text;
            user.is_driver = true;
            user.email = email.Text;
            //user.age = Convert.ToInt32(age.Text);
            user.gender = "Male";
            bool ans = userClient.AddUser(user);
            //answer.Text = Convert.ToString(ans);
        }

    }
}