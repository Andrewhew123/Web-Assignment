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
        private readonly string connectionString = @"Data Source=.\SQLEXPRESS;ATTACHDbFilename=D:\shopping_website\App_Data\Galaxy.mdf;Integrated Security=True;";

        protected void Page_Load(object sender, EventArgs e)
        {
            string orderNumber = Request.QueryString["Order"]?.ToString();
            if (string.IsNullOrEmpty(orderNumber) || orderNumber != Session["order_number"]?.ToString())
            {
                Response.Redirect("GameLibrary.aspx");
                return;
            }

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();

                DataTable userData = GetUserData(con);
                if (userData == null || userData.Rows.Count == 0)
                {
                    con.Close();
                    Response.Redirect("GameLibrary.aspx");
                    return;
                }

                foreach (DataRow userRow in userData.Rows)
                {
                    InsertOrder(con, userRow);
                }

                string orderId = GetOrderId(con);
                if (!string.IsNullOrEmpty(orderId))
                {
                    InsertOrderDetails(con, orderId);
                }

                con.Close();
            }

            Session["user"] = "";
            Response.Cookies["aa"].Expires = DateTime.Now.AddDays(-1);
        }

        private DataTable GetUserData(SqlConnection con)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM User WHERE email = @email";
            cmd.Parameters.AddWithValue("@email", Session["user"].ToString());
            DataTable userData = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(userData);
            return userData;
        }

        private void InsertOrder(SqlConnection con, DataRow userRow)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "INSERT INTO Order VALUES (@orderid, @orderDate, @userId, @paymentId)";
            cmd.Parameters.AddWithValue("@orderDate", userRow["orderDate"].ToString());
            cmd.Parameters.AddWithValue("@userId", userRow["userId"].ToString());
            cmd.Parameters.AddWithValue("@orderId", userRow["orderId"].ToString());
            cmd.Parameters.AddWithValue("@paymentId", userRow["paymentId"].ToString());
            cmd.ExecuteNonQuery();
        }

        private string GetOrderId(SqlConnection con)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT TOP 1 * FROM [Order] WHERE email = @email ORDER BY id DESC";
            cmd.Parameters.AddWithValue("@email", Session["user"].ToString());
            DataTable orderIdData = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(orderIdData);
            if (orderIdData.Rows.Count == 0)
            {
                return null;
            }
            return orderIdData.Rows[0]["id"].ToString();
        }

        private void InsertOrderDetails(SqlConnection con, string orderId)
        {
            if (Request.Cookies["aa"] == null)
            {
                return;
            }

            string cookieValue = Request.Cookies["aa"].Value;
            string[] orders = cookieValue.Split('|');
            foreach (string order in orders)
            {
                string[] orderDetails = order.Split(',');
                if (orderDetails.Length < 5)
                {
                    continue;
                }

                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "INSERT INTO [OrderItem] VALUES (@orderId, @productId)";
                cmd.Parameters.AddWithValue("@orderId", orderId);
                cmd.Parameters.AddWithValue("@productId", orderDetails[0]);
            }
        }
    }
}


