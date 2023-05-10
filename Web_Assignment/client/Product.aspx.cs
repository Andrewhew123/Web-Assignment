using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace Web_Assignment.client
{
    public partial class Product : System.Web.UI.Page
    {
        string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                displayProduct();
            }
        }

        protected void displayProduct()
        {
            using (SqlConnection con = new SqlConnection(strCon))
            {
                //SQL Statement

                con.Open();

                String strDisplayProduct = "select p.name, p.description, p.price, g.genreName, s.os, s.processor, s.storage from Product p, Genre g, System s where p.genreId = g.genreId AND p.systemId = s.systemId AND productId='" + Request.QueryString["id"] + "'";
                SqlCommand cmd = new SqlCommand(strDisplayProduct, con);
                SqlDataReader dr = cmd.ExecuteReader();
                

                while (dr.Read())
                {
                    txtProductName1.Text = dr.GetValue(0).ToString();
                    txtProductName2.Text = dr.GetValue(0).ToString();
                    txtProductDescription.Text = dr.GetValue(1).ToString();
                    txtProductPrice.Text = dr.GetValue(2).ToString();
                    txtProductGenre.Text = dr.GetValue(3).ToString();
                    txtSystem.Text = dr.GetValue(4).ToString() + ", " + dr.GetValue(5).ToString() + ", " + dr.GetValue(6).ToString();
                }

                con.Close();

            }
        }
    }
}