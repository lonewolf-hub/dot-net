using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Collections.Specialized;
using System.Data;
using System.Web.UI.WebControls;

namespace UniversityManagementSystem.Models
{
    public class CommonFn
    {
        public class Commonfnx
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["UniversityCS"].ConnectionString);
            public void Query(string query)
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }

            public DataTable Fetch(string query)
            {
                if (con.State == ConnectionState.Closed)
                {

                    con.Open();
                }
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                return dt;
            }
             
        }
    }
}