using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Assignment.client
{
    public partial class PaymentTailwind : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPayNow_Click(object sender, EventArgs e)
        {
            //paymentMessage.Style.Add("display", "block");
            disabledAll();
        }

        private void disabledAll()
        {
            ddlBankType.Enabled = false;
            txtAccountNumber.Enabled = false;
            txtAccountPassword.Enabled = false;
            btnPay.Enabled = false;
        }

        private void resetTextField()
        {
            txtAccountNumber.Text = string.Empty;
            txtAccountPassword.Text = string.Empty;
        }


        protected void LinkButtonViewReceipt_Click(object sender, EventArgs e)
        {
            //receiptModal.Style.Add("display", "block");
            //paymentMessage.Style.Add("display", "none");
        }

        protected void btnConfirmInvoice_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/client/GameLibrary.aspx");
        }

        protected void LinkButtonClose_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/client/GameLibrary.aspx");
        }

    }
}