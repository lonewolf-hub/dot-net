using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class student_detail : System.Web.UI.Page
{
     SqlConnection cn = new SqlConnection("Data Source=LAPTOP-AMM1MQ8C;Initial Catalog=mycollege;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Application["uid"] == "")
            Response.Redirect("../home.aspx");
        String s, id;
        if (Application["sy"] == "detail")
        {
            id = System.Convert.ToString(Application["sx"]);
            s = "select *from ADMISSION where STU_ID='" + id + "'";
           
            cn.Open();
            SqlCommand cmd = new SqlCommand(s, cn);
            SqlDataReader rs = cmd.ExecuteReader();
            if (rs.Read())
            {
                name_.Text = rs.GetString(1);
                fname_.Text = rs.GetString(2);
                add1_.Text = rs.GetString(3);
                add2_.Text = rs.GetString(4);
                country_.Text = rs.GetString(5);
                state_.Text = rs.GetString(6);
                city_.Text = rs.GetString(7);
                nan_.Text = rs.GetString(8);
                gen_.Text = rs.GetString(9);
                qul_.Text = rs.GetString(10);
                course_.Text = rs.GetString(11);
                photo_.ImageUrl = "../img/" + rs.GetString(12);
                hob_.Text = rs.GetString(16);
                mob_.Text = rs.GetString(13);
                dob_.Text = rs.GetString(14);
                doa_.Text = rs.GetString(15);
                hy_.Text = rs.GetString(17);
                hp_.Text = rs.GetString(18);
                hu_.Text = rs.GetString(19);
                hr_.Text = rs.GetString(20);
                iy_.Text = rs.GetString(21);
                ip_.Text = rs.GetString(22);
                iu_.Text = rs.GetString(23);
                ir_.Text = rs.GetString(24);
            }
            cn.Close();
        }
        else if (Application["sy"] == "dat")
        {
            id = System.Convert.ToString(Application["x"]);
            s = "select *from ADMISSION";
           
            cn.Open();
            SqlCommand cmd = new SqlCommand(s, cn);
            SqlDataReader rs = cmd.ExecuteReader();
            if (rs.Read())
            {

                name_.Text = rs.GetString(1);
                fname_.Text = rs.GetString(2);
                add1_.Text = rs.GetString(3);
                add2_.Text = rs.GetString(4);
                country_.Text = rs.GetString(5);
                state_.Text = rs.GetString(6);
                city_.Text = rs.GetString(7);
                nan_.Text = rs.GetString(8);
                gen_.Text = rs.GetString(9);
                qul_.Text = rs.GetString(10);
                course_.Text = rs.GetString(11);
                photo_.ImageUrl = "../img/" + rs.GetString(12);
                hob_.Text = rs.GetString(16);
                mob_.Text = rs.GetString(13);
                dob_.Text = rs.GetString(14);
                doa_.Text = rs.GetString(15);
                hy_.Text = rs.GetString(17);
                hp_.Text = rs.GetString(18);
                hu_.Text = rs.GetString(19);
                hr_.Text = rs.GetString(20);
                iy_.Text = rs.GetString(21);
                ip_.Text = rs.GetString(22);
                iu_.Text = rs.GetString(23);
                ir_.Text = rs.GetString(24);

            }
            cn.Close();
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Application["sy"] == "detail")
        {
            Response.Redirect("../administrater/student_view.aspx");
            Application["sy"] = "";
        }
        else if (Application["sy"] == "dat")
        {
            Response.Redirect("student.aspx");
        }
    }
    protected void LinkButton17_Click(object sender, EventArgs e)
    {
        Response.Redirect("../home.aspx");
    }
}