using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hospital_management_System.Users
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Appointmnet_Submit_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("Loginpage.aspx");
            }
            catch(Exception ex)
            {

            }
        }
    }
}