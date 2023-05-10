﻿using System;
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
    public partial class OrderCartTailWind : System.Web.UI.Page
    {
        string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                displayProductInCart();
                displayTotal();
            }
        }

        protected void displayProductInCart()
        {
            SqlConnection con = new SqlConnection(strCon);
            //INNER JOIN CartItem ON CartItem.productId = Product.productId
            string strSelect = "SELECT * FROM Product ";
            SqlDataAdapter sda = new SqlDataAdapter(strSelect, con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }

        protected void btnRemove_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strCon);

            RepeaterItem item = (sender as LinkButton).Parent as RepeaterItem;
            Label ids = ((Label)item.FindControl("lblName")) as Label;

            string delete = "DELETE FROM Product WHERE name = @name";

            SqlCommand cmd = new SqlCommand(delete, con);
            cmd.Parameters.AddWithValue("@name", ids.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            displayProductInCart();
            displayTotal();
        }

        protected decimal displayTotal()
        {
            SqlConnection con = new SqlConnection(strCon);
            //INNER JOIN CartItem ON CartItem.productId = Product.productId
            string strSelect = "SELECT * FROM Product ";
            SqlDataAdapter sda = new SqlDataAdapter(strSelect, con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            int nrow = dt.Rows.Count;
            int i = 0;
            decimal subtotal = 0;

            while (i < nrow)
            {
                subtotal += Convert.ToDecimal(dt.Rows[i]["price"].ToString());
                i += 1;
            }

            lblSubtotal.Text = "RM " + subtotal.ToString();
            lblTotal.Text = "RM " + subtotal.ToString();

            txtPromo.Text = "";
            lblDiscount.Text = "-RM 0.00";
            return subtotal;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string promocode = txtPromo.Text;
            decimal afterDiscount = 0;
            decimal beforeDiscount = displayTotal();
            decimal discount = 0;

            if (promocode == "ILUVWEB30")
            {
                // apply 30% discount
                discount = beforeDiscount * 0.3m;
                afterDiscount = beforeDiscount - discount;
                Response.Write("<script>alert('Promo code applied successfully') </script>");

                txtPromo.Text = promocode;
                lblDiscount.Text = "-RM " + Math.Round(discount, 2);
                lblTotal.Text = "RM " + Math.Round(afterDiscount, 2);
            }
            else
            {
                Response.Write("<script>alert('Invalid promo code') </script>");
            }

        }

        protected void btnCheckout_Click(object sender, EventArgs e)
        {

        }
    }
}