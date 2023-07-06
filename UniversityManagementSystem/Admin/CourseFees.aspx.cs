using System;
using System.Data;
using System.Web.UI.WebControls;
using static UniversityManagementSystem.Models.CommonFn;

namespace UniversityManagementSystem.Admin
{
    public partial class CourseFees : System.Web.UI.Page
    {
        Commonfnx fn = new Commonfnx();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetCourse();
                GetFees();
            }
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
                string CourseVal = ddlCourse.SelectedItem.Text;
                DataTable dt = fn.Fetch("Select * from Fees Where CourseId = '" + ddlCourse.SelectedItem.Value + "' ");
                if (dt.Rows.Count == 0)

                {
                    string query = "Insert into Fees Values('" + ddlCourse.SelectedItem.Value + "', '" + txtFeeAmounts.Text.Trim() + "')";
                    fn.Query(query);
                    lblmsg.Text = "Inserted Succesfully!";
                    lblmsg.CssClass = "alert alert-success";
                    ddlCourse.SelectedIndex = 0;
                    txtFeeAmounts.Text = string.Empty;
                    GetFees();
                }
                else
                {
                    lblmsg.Text = "Entered Fees Already Exists For <b>'" + CourseVal + "'!";
                    lblmsg.CssClass = "alert alert-danger";
                }
            }

            catch (Exception ex)

            {
                Response.Write("<script>alert('" + ex.Message + "');</script> ");
            }


        }

        private void GetFees()
        {
            DataTable dt = fn.Fetch(@"Select Row_Number() over(Order by (Select 1)) as [Sr.No], f.FeesId,f.CourseId,c.CourseName, f.FeesAmount  from Fees f inner join Course c on c.CourseId = f.CourseId");
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void GridView1_PageIndexChanging(object sender, System.Web.UI.WebControls.GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            GetFees();
        }

        protected void GridView1_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GetFees();
        }

        protected void GridView1_RowDeleting(object sender, System.Web.UI.WebControls.GridViewDeleteEventArgs e)
        {
            try
            {
                int FeesId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
                fn.Query("Delete from Fees where FeesId = '" + FeesId + "'");
                lblmsg.Text = "Fees Deleted Succesfully!";
                lblmsg.CssClass = "alert alert-success";
                GridView1.EditIndex = -1;
                GetFees();
            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script> ");

            }
        }

        protected void GridView1_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GetFees();
        }

        protected void GridView1_RowUpdating(object sender, System.Web.UI.WebControls.GridViewUpdateEventArgs e)
        {

            try
            {
                GridViewRow row = GridView1.Rows[e.RowIndex];
                int feesId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
                string feeAmt = (row.FindControl("TextBox1") as TextBox).Text;
                fn.Query("Update Fees Set FeesAmount = '" + feeAmt + "' Where FeesId = '" + feesId + "' ");
                lblmsg.Text = "Fees Updated Succesfully!";
                lblmsg.CssClass = "alert alert-success";
                GridView1.EditIndex = -1;
                GetFees();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script> ");

            }
        }
    }
}