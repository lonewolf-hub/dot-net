using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class administrater_stu_fess : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=LAPTOP-AMM1MQ8C;Initial Catalog=mycollege;Integrated Security=True");
     
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Application["aid"] == "")
            Response.Redirect("../home.aspx");
        fees_date.Text = DateTime.Now.ToString("dd/MM/yyyy");
        string id, s;
        id = System.Convert.ToString(Application["sx"]);
        cn.Open();
        s = "select *from ADMISSION where STU_ID='" + id + "'";
        SqlCommand cmd = new SqlCommand(s, cn);
        SqlDataReader rs = cmd.ExecuteReader();
        if (rs.Read())
        {
            sname.Text = rs.GetString(1);
            cname.Text = rs.GetString(11);
        }
        cn.Close();
        cn.Open();
        s = "select * from COURSE where COURSE_NAME='" + cname.Text + "'";
        SqlCommand cmd1 = new SqlCommand(s, cn);
        SqlDataReader rs1 = cmd1.ExecuteReader();
        if (rs1.Read())
        {
            tfees.Text = System.Convert.ToString(rs1.GetInt32(3));
            int J, p = 0, ba = 0, fa;
            string d;
            cn.Close();
            s = "select * from FEES where FEES_ST_ID='" + id + "'";
            cn.Open();
            SqlCommand cmd2 = new SqlCommand(s, cn);
            SqlDataReader rs2 = cmd2.ExecuteReader();
            while (rs2.Read())
            {
                J = 0;
                tbl.BorderWidth = 2;
                TableRow rowNew = new TableRow();
                tbl.Controls.Add(rowNew);
                d = rs2.GetString(3);
                fa = rs2.GetInt32(2);
                p += fa;
                while (J < 4)
                {
                    TableCell cellNew = new TableCell();
                    if (J == 0)
                    {
                        cellNew.Width = 100;
                        cellNew.Text = System.Convert.ToString(rs2.GetInt32(0));
                    }
                    if (J == 1)
                    {
                        cellNew.Width = 150;
                        cellNew.Text = d;
                    }
                    if (J == 2)
                    {
                        cellNew.Width = 200;
                        cellNew.Text = System.Convert.ToString(fa);
                    }
                    rowNew.Controls.Add(cellNew);
                    J++;
                }
            }
            ba = System.Convert.ToInt32(tfees.Text) - p;
            tpfees.Text = System.Convert.ToString(p);
            bfees.Text = System.Convert.ToString(ba);
        }
        cn.Close();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int bal, am, cl;
        if (feeamt.Text == "" || System.Convert.ToInt32(feeamt.Text) == 0)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter fees amount');", true);

        }
        else
        {
            am = System.Convert.ToInt32(feeamt.Text);
            bal = System.Convert.ToInt32(bfees.Text);
            cl = bal - am;
            if (cl < 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('fees fully paid or enter invailid amount');", true);
            }
            else
            {
                string id, s;
                int amt = 0, x = 0;
                amt = System.Convert.ToInt32(feeamt.Text);
                id = System.Convert.ToString(Application["sx"]);
                cn.Open();
                s = "insert into FEES values('" + id + "'," + amt + ",'" + fees_date.Text + "')";
                SqlCommand cmd = new SqlCommand(s, cn);
                x = cmd.ExecuteNonQuery();
                if (x == 1)
                {
                    Application["sx"] = "";
                    Response.Redirect("student_view.aspx");
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert(' fees not saved');", true);
                }
            }
        }
    }
    protected void LinkButton17_Click(object sender, EventArgs e)
    {
        Response.Redirect("../home.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("student_view.aspx");
    }
}