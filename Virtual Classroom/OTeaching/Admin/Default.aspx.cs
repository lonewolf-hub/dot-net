﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        lbl.Text = "";

        if (txtname.Text == "admin" && txtpasss.Text == "admin")
        {
            Response.Redirect("AddCategory.aspx");

        }
        else
        {
            lbl.Text = "Invalid Detail";
        }
    }
}