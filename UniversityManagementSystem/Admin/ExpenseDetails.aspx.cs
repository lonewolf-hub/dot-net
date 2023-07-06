using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static UniversityManagementSystem.Models.CommonFn;

namespace UniversityManagementSystem.Admin
{

    public partial class ExpenseDetails : System.Web.UI.Page
    {
        Commonfnx fn = new Commonfnx();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack) 
            {
                GetExpenseDetails();
            }
        }

        private void GetExpenseDetails()
        {
            DataTable dt = fn.Fetch(@"Select Row_Number() over(Order by (Select 1)) as [Sr.No] , e.ExpenseId, e.CourseId, c.CourseName, e.SubjectId, s.SubjectName, e.ChargeAmount from Expense e
                                               inner join Course c on e.CourseId = c.CourseId 
                                               inner join Subject s on e.SubjectId = s.SubjectId");

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}