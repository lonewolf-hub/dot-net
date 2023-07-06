using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration; 

public partial class courseview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        SqlConnection cn = new SqlConnection("Data Source=LAPTOP-AMM1MQ8C;Initial Catalog=mycollege;Integrated Security=True");

        string s;
        int J, i;
        s = "select * from COURSE ";
        cn.Open();
        SqlCommand cmd = new SqlCommand(s, cn);
        SqlDataReader rs = cmd.ExecuteReader();
        while (rs.Read())
        {
            i = System.Convert.ToInt32(rs.GetInt32(1));
            J = 0;
            tbl.BorderWidth = 2;
            TableRow rowNew = new TableRow();
            tbl.Controls.Add(rowNew);
            while(J<4)

            {
                TableCell cellNew = new TableCell();
                if (J == 0)
                {
                    cellNew.Width = 100;
                    cellNew.Text = System.Convert.ToString(rs.GetInt32(0));
                }
                if (J == 1)
                {
                    cellNew.Width = 150;
                    cellNew.Text = rs.GetString(2);
                }
                if (J == 2)
                {
                    cellNew.Width = 200;
                    cellNew.Text = System.Convert.ToString(rs.GetInt32(3));
                }
                if (J == 3)
                {
                    cellNew.Width = 200;
                    if (i == 1)
                    {
                        cellNew.Text = "3 years";
                    }
                    else if (i == 2)
                    {
                        cellNew.Text = "2 years";
                    }
                }
                rowNew.Controls.Add(cellNew);
                J++;

            }
        }

    }
}