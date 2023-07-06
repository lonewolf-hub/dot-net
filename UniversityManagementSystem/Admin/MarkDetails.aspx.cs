using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using static UniversityManagementSystem.Models.CommonFn;

namespace UniversityManagementSystem.Admin
{
    public partial class MarkDetails : System.Web.UI.Page
    {
        Commonfnx fn = new Commonfnx();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetCourse();
                GetMarks();
            }
        }

        private void GetMarks()
        {
            DataTable dt = fn.Fetch(@"Select ROW_NUMBER() OVER(ORDER BY(SELECT 1)) as [Sr.No], e.ExamId, e.CourseId, c.CourseName, e.SubjectId, s.SubjectName, e.RollNo, e.TotalMarks, e.OutOfMarks from Exam e inner join Course c on c.CourseId = e.CourseId inner join Subject s on s.SubjectId = e.SubjectId ");
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        private void GetCourse()
        {
            DataTable dt = fn.Fetch("Select * from Course");
            ddlCourse.DataSource = dt;
            ddlCourse.DataTextField = "CourseName";
            ddlCourse.DataValueField = "CourseId";
            ddlCourse.DataBind();
            ddlCourse.Items.Insert(0, "Select Course");
        }

        protected void btnAdd_Click1(object sender, EventArgs e)
        {

            try
            {
              string courseId = ddlCourse.SelectedValue;
                string rollNo = txtRoll.Text.Trim();
                DataTable dt = fn.Fetch(@"Select ROW_NUMBER() OVER(ORDER BY(SELECT 1)) as [Sr.No], e.ExamId, e.CourseId, c.CourseName, e.SubjectId, s.SubjectName, e.RollNo, e.TotalMarks, e.OutOfMarks from Exam e inner join Course c on c.CourseId = e.CourseId inner join Subject s on s.SubjectId = e.SubjectId where e.CourseId = '" + courseId + "' and e.RollNo = '" + rollNo + "'");
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }

            catch (Exception ex)

            {
                throw;
            }


        }

   

        protected void GridView1_PageIndexChanging(object sender, System.Web.UI.WebControls.GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
        }

      
    }
}