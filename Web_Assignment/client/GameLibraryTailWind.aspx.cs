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
            }
        }

        protected void displayOwnGame()
        {
            SqlConnection con = new SqlConnection(strCon);
            //select * from Product p where p.productId IN(select c.productId from Cart c where c.userId= '" + Request.QueryString["id"] + "')
            //select * from Product p where p.productId IN(select c.productId from Cart c where c.userId= '7df4f68c-1f12-456e-b745-e3afc70184a9')
            string strSelect = "select * from Product p where p.productId IN(select c.productId from Cart c where c.userId= '7df4f68c-1f12-456e-b745-e3afc70184a9')";
            SqlDataAdapter sda = new SqlDataAdapter(strSelect, con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }

        protected void btnReview_Click(object sender, EventArgs e)
        {
            modal.Style.Add("display", "block");
        }

        protected void btnCloseModal_Click(object sender, EventArgs e)
        {
            modal.Style.Add("display", "none");
        }
    }
}