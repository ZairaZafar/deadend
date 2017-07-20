using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DeadEnd.DeadEnd
{
    public partial class UserProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            user.Text = Convert.ToString(Session["username"]);
            dataload();
            if (Session["username"] == null)
            {
                Response.Redirect("DE.aspx");
            }
        }

        protected void dataload()
        {
            using (SqlConnection connection = new SqlConnection("data source = .; database = DeadEnd; integrated security = SSPI"))
            {
                connection.Open();
                SqlCommand command = new SqlCommand("Select dname from useraddinfo where userid = '"+Convert.ToInt32(Session["id"])+"' and dsymno = '1' ", connection);
                condition.Text = Convert.ToString(command.ExecuteScalar());

                command = new SqlCommand("Select dtype from useraddinfo where userid = '" + Convert.ToInt32(Session["id"]) + "' and dsymno = '1' ", connection);
                type.Text = Convert.ToString(command.ExecuteScalar());

                command = new SqlCommand("Select dsymptom from useraddinfo where userid = '" + Convert.ToInt32(Session["id"]) + "' and dsymno = '1' ", connection);
                symptoms.Text = Convert.ToString(command.ExecuteScalar());

                command = new SqlCommand("Select dhowyoufeel from useraddinfo where userid = '" + Convert.ToInt32(Session["id"]) + "' and dsymno = '1' ", connection);
                howYouFeel.Text = Convert.ToString(command.ExecuteScalar());

                command = new SqlCommand("Select dname from useraddinfo where userid = '" + Convert.ToInt32(Session["id"]) + "' and dsymno = '2' ", connection);
                condition1.Text = Convert.ToString(command.ExecuteScalar());

                command = new SqlCommand("Select dtype from useraddinfo where userid = '" + Convert.ToInt32(Session["id"]) + "' and dsymno = '2' ", connection);
                type1.Text = Convert.ToString(command.ExecuteScalar());

                command = new SqlCommand("Select dsymptom from useraddinfo where userid = '" + Convert.ToInt32(Session["id"]) + "' and dsymno = '2' ", connection);
                symptoms1.Text = Convert.ToString(command.ExecuteScalar());

                command = new SqlCommand("Select dhowyoufeel from useraddinfo where userid = '" + Convert.ToInt32(Session["id"]) + "' and dsymno = '2' ", connection);
                howYouFeel1.Text = Convert.ToString(command.ExecuteScalar());


                command = new SqlCommand("Select Concat(Concat('userfname',' '),'userlname') from userinfo where userid = '" + Convert.ToInt32(Session["id"]) + "' ", connection);
                name.Text = Convert.ToString(command.ExecuteScalar());

                penName.Text = Convert.ToString(Session["username"]);

               command = new SqlCommand("Select dsymptom from useraddinfo where userid = '" + Convert.ToInt32(Session["id"]) + "' and dsymno = '2' ", connection);
                 age.Text = Convert.ToString(command.ExecuteScalar());

                command = new SqlCommand("Select usersex from userinfo where userid = '" + Convert.ToInt32(Session["id"]) + "' ", connection);
                gender.Text = Convert.ToString(command.ExecuteScalar());

                command = new SqlCommand("Select useraboutme from userinfo where userid = '" + Convert.ToInt32(Session["id"]) + "' ", connection);
                bio.Text = Convert.ToString(command.ExecuteScalar());



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