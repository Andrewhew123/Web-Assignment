using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Assignment.client
{
    public partial class GameLibrary : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButtonEditReview_Click(object sender, EventArgs e)
        {
            reviewModal.Style.Add("display", "block");
        }

        protected void LinkButtonClose_Click(object sender, EventArgs e)
        {
            reviewModal.Style.Add("display", "none");
        }

        protected void btnCloseReview_Click(Object sender, EventArgs e)
        {
            reviewModal.Style.Add("display", "none");
        }

        private void resetTextField()
        {
           
        }
    }
}