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
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
   
        SqlCommand cmd;
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            int id1 = 0;

            string str1 = "select max(ID) as Id from UserTab";
            da = new SqlDataAdapter(str1, con);
            da.Fill(ds);


            id1 = 1;

            id1 = int.Parse(ds.Tables[0].Rows[0]["Id"].ToString());


            if(id1 > 0)
            {
                id1++;
            }
            else
            {
                id1 = 2;
            }

            lbl_rid.Text = id1.ToString();
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Forgotpass.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

        protected void btn_login_b_Click(object sender, EventArgs e)
        {
            con.Open();

            try
            {
                string str = "insert into UserTab values("+lbl_rid.Text+",'"+txt_signup_username.Text+"','"+txt_signup_email.Text+"',"+txt_signup_mobile.Text+",'"+txt_signup_pass.Text+"')";
                cmd = new SqlCommand(str, con);
                cmd.ExecuteNonQuery();

                Response.Write("<script>alert('Registration Success..')</script>");
            }
            catch(Exception exx)
            {
                Response.Write(exx.ToString());
            }
        }
    }
}