using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DeadEnd.DeadEnd
{
    public partial class Connect : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            user.Text = Convert.ToString(Session["id"]);
            if (Session["username"] == null)
            {
                Response.Redirect("DE.aspx");
            }
        }

        protected void logout(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("DE.aspx");
        }

        protected void userprofile(object sender, EventArgs e)
        {
            Response.Redirect("UserProfile.aspx");
        }

    }
}
