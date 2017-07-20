using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace DeadEnd.Stuff
{
    public partial class DE : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signup(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection("data source = .; database = DeadEnd; integrated security = SSPI"))
            {
                connection.Open();
                SqlCommand command = new SqlCommand("Insert into UserInfo Values('','" + fname.Text + "','" + lname.Text + "','" + penname1.Text + "','" + gender.Text + "','some','online','" + password1.Text + "','')", connection);
                command.ExecuteScalar();
                command = new SqlCommand("Select userid from userinfo where [userpname] Like '" + penname2.Text + "'", connection);
                Session["id"] = Convert.ToString(command.ExecuteScalar());
                Session["username"] = penname1.Text;
                Response.Redirect("Connect.aspx");
            }
        }

        protected void signin(object sender, EventArgs e)
        {
            string un = null;
            string code = null;
            using (SqlConnection connection = new SqlConnection("data source = .; database = DeadEnd; integrated security = SSPI"))
            {
                connection.Open();
                SqlCommand command = new SqlCommand("Select userpname from userinfo where [userpname] Like '" + penname2.Text + "'", connection);
                un = Convert.ToString(command.ExecuteScalar());
                command = new SqlCommand("Select usercode from userinfo where [userpname] Like '" + penname2.Text + "'", connection);
                code = Convert.ToString(command.ExecuteScalar());

                if (code != null)
                {
                    command = new SqlCommand("Select userid from userinfo where [userpname] Like '" + penname2.Text + "'", connection);
                    Session["id"] = Convert.ToString(command.ExecuteScalar());
                    Session["username"] = penname2.Text;
                    Response.Redirect("Connect.aspx");
                }

            }

        }
    }
}