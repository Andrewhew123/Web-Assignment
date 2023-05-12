using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Web_Assignment.client
{
    public partial class GameLibraryTailWind : System.Web.UI.Page
    {
        string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                displayOwnGame();
                // order cart lazy to check whether the user got buy the product before or not
                // here to check and display only once if there is the same product
            }
        }

        protected void displayOwnGame()
        {
            SqlConnection con = new SqlConnection(strCon);
            string strSelect = "select * from Product p where p.productId IN(select o.productId from Order c where c.userId= '" + Session["UserId"] + "')";
            SqlDataAdapter sda = new SqlDataAdapter(strSelect, con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }

    }
}