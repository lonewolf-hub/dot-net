using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Hospital_management_System.Users
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Loginpage.aspx");
        }

        protected void btn_fpass_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-QE99DNH7\SQLEXPRESS;Initial Catalog=F:\ASP.NET\HOSPITAL_MANAGEMENT_SYSTEM\HOSPITAL_MANAGEMENT_SYSTEM\APP_DATA\LUKKY.MDF;Integrated Security=True");
            SqlCommand cmd;
            DataTable dt = new DataTable();
            con.Open();

            try
            {
                string str = "select Email,Mobile where Email='"+txt_fpass_Email.Text+"' and Mobile="+txt_fpass_mobile.Text+"";
                SqlDataAdapter da = new SqlDataAdapter(str,con);
                da.Fill(dt);

                if(dt.Rows.Count > 0)
                {
                    string str1 = "update UserTab set Pass='"+txt_fpass_newpass.Text+"' where Email='"+txt_fpass_Email.Text+"', Mobile="+txt_fpass_mobile.Text+", Pass='"+txt_fpass_oldpass.Text+"'";
                    cmd = new SqlCommand(str1, con);
                    cmd.ExecuteNonQuery();

                    Response.Write("<script>alert('Forgot Password Successfully')</script>");

                    con.Close();
                }
                else
                {

                }
                
            }
            catch(Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
    }
}