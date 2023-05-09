using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Web_Assignment.client
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegisterConnectionString.ConnectionString"]);
            }
        }

        protected void username_TextChanged(object sender, EventArgs e)
        {

        }

        protected void register_Click(object sender, EventArgs e)
        {
            con.Open();

            ////SqlCommand cmd = con.CreateCommand();
            ////cmd.CommandType = CommandType.Text;
            ////cmd.CommandText = "New user registration values('"+username.Text+"','"+email.Text+"','"+password.Text+"')";
            ////cmd.ExecuteNonQuery();

            //String Query = "insert into Galaxy.User (username, password, email) values ('"+this.usernametxt.Text+"','"+this.emailtxt.Text+"','"+this.passwordtxt.Text+"')";
            //MySqlConnection conDataBase = new MySqlConnection(SqlConnectionStringBuilder)
            //    MySqlCommad cmdData

            //con.Close();

            Response.Write("Your Registration is Succesful!");
        }

        protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
        {

        }

        protected void passwordtxt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void register_Click1(object sender, EventArgs e)
        {
            Response.Write("<script>alert('" + "Account Seccesfully Registered!" + "')</script>");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}