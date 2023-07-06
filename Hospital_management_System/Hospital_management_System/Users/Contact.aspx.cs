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
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_feedbake_submit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand cmd;

            try
            {
                con.Open();
                string str = "insert into FeedbackTab (Name,Email,MSG) values('" + txt_feedbake_name.Text + "','" + txt_feedbake_Email.Text + "','" + txt_feedbake_msg.Text + "')";
                cmd = new SqlCommand(str, con); ;
                cmd.ExecuteNonQuery();

                Response.Write("<script>alert('Feedback send Successfully..')</script>");
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
    }
}