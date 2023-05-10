using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Web_Assignment.client
{
    public partial class PaymentSuccess : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;ATTACHDbFilename=D:\shopping_website\App_Data\Galaxy.mdf;Integrated Security=True;");
        string order = "";
        string orderId;
        string s;
        string t;
        string[] a = new string[6];
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            order = Request.QueryString["Order"].ToString();

            if (order == Session["order_number"].ToString())
            {
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from registration where email ='" + Session["user"].ToString() + "'";
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                foreach (DataRow dr in dt.Rows)
                {
                    SqlCommand cmd1 = con.CreateCommand();
                    cmd1.CommandType = CommandType.Text;
                    cmd1.CommandText = "insert into orders value('" + dr["orderDate"].ToString() + "','" + dr["userId"].ToString() + "','" + dr["paymentId"].ToString() + "')";
                    cmd1.ExecuteNonQuery();


                }
                SqlCommand cmd2 = con.CreateCommand();
                cmd2.CommandType = CommandType.Text;
                cmd2.CommandText = "select top 1 * from Order where email='" + Session["user"].ToString() + "' order by id desc ";
                cmd2.ExecuteNonQuery();
                DataTable dt2 = new DataTable();
                SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
                da2.Fill(dt2);
                foreach (DataRow dr2 in dt2.Rows)
                {
                    orderId = dr2["id"].ToString();
                }

                if (Request.Cookies["aa"] != null)
                {
                    s = Convert.ToString(Request.Cookies["aa"].Value);
                    string[] strArr = s.Split('|');
                    for (int i = 0; i < strArr.Length; i++)
                    {
                        t = Convert.ToString(strArr[i].ToString());
                        string[] strArr1 = t.Split(',');
                        for (int j = 0; j < strArr1.Length; j++)
                        {
                            a[j] = strArr1[j].ToString();
                        }

                        SqlCommand cmd3 = con.CreateCommand();
                        cmd3.CommandType = CommandType.Text;
                        cmd3.CommandText = "insert into order_details values('" + orderId.ToString() + "','" + a[0].ToString() + "','" + a[2].ToString() + "','" + a[3].ToString() + "','" + a[4].ToString() + "')";
                        cmd3.ExecuteNonQuery();

                    }
                }
            }
            else
            {
                Response.Redirect("Login.aspx");

            }

            con.Close();

            Session["user"] = "";
            Response.Cookies["aa"].Expires = DateTime.Now.AddDays(-1);
            Response.Cookies["aa"].Expires = DateTime.Now.AddDays(-1);


        }


    }
}