using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Assignment.admin
{
    public partial class AddProduct : System.Web.UI.Page
    {
        string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindReaderData_Genre();
                BindReaderData_System();
            }

        }

        /*
        protected void cascadingGenreDropDown()
        {
            SqlConnection con;
            con = new SqlConnection(strCon);
            con.Open();

            //SQL Statement
            string strSelect = "Select genreName from [dbo].[Genre]";

            //Need sqlcommand to execute sql query
            SqlCommand cmdSelect = new SqlCommand(strSelect, con);

            cmdSelect.CommandType = System.Data.CommandType.Text;
            ddlGenre.DataSource = cmdSelect.ExecuteReader();
            ddlGenre.DataTextField = "genreName";
            ddlGenre.DataValueField = "genreId";
            ddlGenre.DataBind();
            ddlGenre.Items.Insert(0, new ListItem("-- Select Genre --", "0"));

        }
        */

        /*
        private void BindGenreData()
        {
            SqlConnection con;
            con = new SqlConnection(strCon);

            //SQL Statement
            string strSelect = "Select genreName from [dbo].[Genre]";

            SqlDataAdapter da = new SqlDataAdapter(strSelect, con);

            DataSet ds = new DataSet();
            da.Fill(ds);

            ds.Tables[0].Columns.Add("genre", typeof(string), "genreName");
            ddlGenre.DataValueField = "genreId";
            ddlGenre.DataTextField = "genre";
            ddlGenre.DataSource = ds;
            ddlGenre.DataBind();


        }
        */

        private void BindReaderData_Genre()
        {

            using (SqlConnection con = new SqlConnection(strCon))
            {
                //SQL Statement
                string strSelect = "Select * from [dbo].[Genre]";

                SqlCommand cmd = new SqlCommand(strSelect, con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    ListItem genreList = new ListItem(rdr["genreName"].ToString(), rdr["genreId"].ToString());
                    
                    ddlGenre.Items.Add(genreList);

                }
            }
           

        }

        private void BindReaderData_System()
        {

            using (SqlConnection con = new SqlConnection(strCon))
            {
                //SQL Statement
                string strSelect = "Select * from [dbo].[System]";

                SqlCommand cmd = new SqlCommand(strSelect, con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    ListItem systemList = new ListItem(rdr["os"] + ", " + rdr["processor"] + ", " + rdr["storage"], rdr["systemId"].ToString());

                    ddlSystem.Items.Add(systemList);

                }
            }


        }

        protected void btnAddProduct_Click(object sender, EventArgs e)
        {
            //System Input
            String nameInput = txtProductName.Text;
            String descInput = txtDesc.InnerText;
            double priceInput = double.Parse(txtPrice.Text);
            int genreInput = int.Parse(ddlGenre.SelectedValue);
            int systemInput = int.Parse(ddlSystem.SelectedValue);
            String ImagefileName = null;

            if (FileUploadProductImage.HasFile)
            {
                string strname = FileUploadProductImage.FileName.ToString();
                FileUploadProductImage.PostedFile.SaveAs(Server.MapPath("~/product/productCover/") + strname);
                ImagefileName = strname;


                SqlConnection con;

                con = new SqlConnection(strCon);
                con.Open();

                //SQL Statement
                string strAddProduct = "insert into Product (name, description, price, genreId, systemId) values('" + nameInput + "', '" + descInput + "', '" + priceInput + "', '" + genreInput + "', '" + systemInput + "')";

                //Need sqlcommand to execute sql query
                SqlCommand cmd = new SqlCommand(strAddProduct, con);

                int rowAffected = cmd.ExecuteNonQuery();
                con.Close();

                if (rowAffected > 0)
                {
                    Response.Write("<script>alert('Successfully add product')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Failed to add product')</script>");
                }


            }
            else
            {
                ImagefileName = null;
            }

            

        }
    }
}