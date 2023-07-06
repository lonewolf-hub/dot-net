using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Hospital_management_System.Users
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

        protected void btn_login_b_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand cmd;

            string str1 = "select * from UserTab where Uname='"+txt_login_username.Text+"' and Pass='"+txt_login_pass.Text+"'";
            SqlDataAdapter da = new SqlDataAdapter();
            DataTable dt = new DataTable();
            da = new SqlDataAdapter(str1, con);
            da.Fill(dt);

            if(dt.Rows.Count > 0)
            {
                Response.Redirect("MainAppoinment.aspx");
            }
            else
            {

            }
        }
    }
}