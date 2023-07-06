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
    public partial class Teacher : System.Web.UI.Page
    {
        Commonfnx fn = new Commonfnx();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetTeachers();
            }
        }

        private void GetTeachers()
        {
            DataTable dt = fn.Fetch(@"Select Row_Number() over(Order by (Select 1)) as [Sr.No], * from Teacher");
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void btnAdd_Click1(object sender, EventArgs e)
        {

            try
            {
                if(ddlGender.SelectedValue != "0")
                {
                    string email = txtEmail.Text.Trim();
                    DataTable dt = fn.Fetch("Select * from Teacher where Email = '" + email + "' ");
                    if (dt.Rows.Count == 0)
                    {
                        string query = "Insert into Teacher values ('" + txtName.Text.Trim() + "', '" + txtDoB.Text.Trim() + "', '" + ddlGender.SelectedValue + "',  '" + txtMobile.Text.Trim() + "',  '" + txtEmail.Text.Trim() + "',  '" + txtAddress.Text.Trim() + "',  '" + txtPassword.Text.Trim() + "')";
                        fn.Query(query);
                        lblmsg.Text = "Inserted Succesfully!";
                        lblmsg.CssClass = "alert alert-success";
                        ddlGender.SelectedIndex = 0;
                        txtName.Text = string.Empty;
                        txtDoB.Text = string.Empty;
                        txtMobile.Text = string.Empty;
                        txtEmail.Text = string.Empty;
                        txtAddress.Text = string.Empty;
                        txtPassword.Text = string.Empty;
                        GetTeachers(); 
                    }

                    else 
                    {
                        lblmsg.Text = "Entered <b>'" + email + "'</b> already exists!";
                        lblmsg.CssClass = "alert alert-danger";
                    }
                }

                else
                {
                    lblmsg.Text = "Gender is Required";
                    lblmsg.CssClass = "alert alert-danger";
                }
            }

            catch (Exception ex)

            {
                Response.Write("<script>alert('" + ex.Message + "');</script> ");
            }


        }


        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            GetTeachers();

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GetTeachers();

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                int teacherId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
                fn.Query("Delete from Teacher where TeacherId = '" + teacherId + "'");
                lblmsg.Text = "Teacher Deleted Succesfully!";
                lblmsg.CssClass = "alert alert-success";
                GridView1.EditIndex = -1;
                GetTeachers();

            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script> ");

            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GetTeachers();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            try
            {
                GridViewRow row = GridView1.Rows[e.RowIndex];
                int teacherId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
                string name = (row.FindControl("txtName") as TextBox).Text;
                string mobile = (row.FindControl("txtMobile") as TextBox).Text;
                //string password = (row.FindControl("txtPassword") as TextBox).Text;
                string address = (row.FindControl("txtAddress") as TextBox).Text;
                fn.Query("Update Teacher set Name = '" + name.Trim() + "', Mobile = '" + mobile.Trim() + "', Address = '" + address.Trim() + "' Where TeacherId = '" + teacherId + "' ");
                lblmsg.Text = "Teacher Updated Succesfully!";
                lblmsg.CssClass = "alert alert-success";
                GridView1.EditIndex = -1;
                GetTeachers();
                //PassWord = '" + password.Trim() + "' to add password

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script> ");

            }
        }

    
    }
}