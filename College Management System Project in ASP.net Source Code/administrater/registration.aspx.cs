using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class administrater_registration : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=LAPTOP-AMM1MQ8C;Initial Catalog=mycollege;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
         if (Application["uid"] != "" || Application["aid"] != "")
        {
            string s;
        s = "select * from COUNTRY";
            // SqlConnection cn = new SqlConnection("Data Source=.;AttachDbFilename=|DataDirectory|\\MyCollege.mdf;Integrated Security=True;User Instance=True");
         cn.Open();
            SqlCommand cmd = new SqlCommand(s, cn);
        if (country.Page.IsPostBack == false)
        {
            country.Items.Add("select country");
            SqlDataReader rs = cmd.ExecuteReader();
            while (rs.Read())
            {
                country.Items.Add(rs.GetString(1));
            }
            cn.Close();
        }
        if (state.Page.IsPostBack == false)
        {
            state.Items.Add("select state");

        }
        if (city.Page.IsPostBack == false)
        {
            city.Items.Add("select city");

        }
        if (course.Page.IsPostBack == false)
        {
            course.Items.Add("select course");
            course.Items.Add("course");

        }

              if (Application["sy"] == "Edite")
        {
            Image1.Visible = true;
            string i;
            i = System.Convert.ToString(Application["sx"]);
            Button5.Visible = false;
            update.Visible = true;
            cn.Open();
            s = "select * from ADMISSION where STU_ID='" + i + "'";
            SqlCommand cmd1 = new SqlCommand(s, cn);
            SqlDataReader rs = cmd1.ExecuteReader();
            while (rs.Read())
            {
                if (rs.GetString(0) == i)
                {
                    name.Text = rs.GetString(1);
                    fname.Text = rs.GetString(2);
                    add1.Text = rs.GetString(3);
                    add2.Text = rs.GetString(4);
                    country.Text = rs.GetString(5);
                    state.Text = rs.GetString(6);
                    city.Text = rs.GetString(7);
                    nan.Text = rs.GetString(8);
                    gen.Text = rs.GetString(9);
                    qul.Text = rs.GetString(10);
                    course.Text = rs.GetString(11);
                    Image1.ImageUrl = "../img/" + rs.GetString(12);
                    hob.Text = rs.GetString(16);
                    mob.Text = rs.GetString(13);
                    dob.Text = rs.GetString(14);
                    doa.Text = rs.GetString(15);
                    hy.Text = rs.GetString(17);
                    hp.Text = rs.GetString(18);
                    hu.Text = rs.GetString(19);
                    hr.Text = rs.GetString(20);
                    iy.Text = rs.GetString(21);
                    ip.Text = rs.GetString(22);
                    iu.Text = rs.GetString(23);
                    ir.Text = rs.GetString(24);
                }
            }
            Application["sy"] = "";
            cn.Close();
        }
        }
         else
             Response.Redirect("../home.aspx");

         cn.Close();

    }
    protected void country_SelectedIndexChanged(object sender, EventArgs e)
    {
        cn.Close();

        state.Items.Clear();
        state.Items.Add("salect state");
        string con, s, s2;
        int id = 0, id1 = 0;
        con = country.Text;
        s = "select * from COUNTRY";

        cn.Open();
        SqlCommand cmd = new SqlCommand(s, cn);
        SqlDataReader rs = cmd.ExecuteReader();
        while (rs.Read())
        {
            if (rs.GetString(1) == con)
            {
                id = rs.GetInt32(0);

            }
        }
        cn.Close();
        s2 = "select * from STATE";
        cn.Open();
        SqlCommand cmd1 = new SqlCommand(s2, cn);
        SqlDataReader rs1 = cmd1.ExecuteReader();
        if (state.Page.IsPostBack == true)
        {
            while (rs1.Read())
            {
                id1 = rs1.GetInt32(1);
                if (id1 == id)
                {

                    state.Items.Add(rs1.GetString(2));


                }
            }
        }
        cn.Close();
    }
    protected void state_SelectedIndexChanged(object sender, EventArgs e)
    {
        city.Items.Clear();
        city.Items.Add("salect city");
        string con, s,s2;
        int id = 0, id1 = 0;
        con = state.Text;
        s = "select * from STATE";

        cn.Open();
        SqlCommand cmd = new SqlCommand(s, cn);
        SqlDataReader rs = cmd.ExecuteReader();
        while (rs.Read())
        {
            if (rs.GetString(2) == con)
            {
                id = rs.GetInt32(0);

            }
        }
        cn.Close();
        s2 = "select * from CITY";
        cn.Open();
        SqlCommand cmd1 = new SqlCommand(s2, cn);
        SqlDataReader rs1 = cmd1.ExecuteReader();
        if (state.Page.IsPostBack == true)
        {
            while (rs1.Read())
            {
                id1 = rs1.GetInt32(1);
                if (id1 == id)
                {

                    city.Items.Add(rs1.GetString(2));


                }
            }
        }
        cn.Close();


    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        course.Items.Clear();
        course.Items.Add("salect course");
        string q = qul.Text, s;
        int i = 0;
        s = "select * from course";
        if (q == "Intermediate")
        {
            i = 1;
        }
        else if (q == "Graduate")
        {
            i = 2;
        }
       
        cn.Open();
        SqlCommand cmd = new SqlCommand(s, cn);
        SqlDataReader rs = cmd.ExecuteReader();
        while (rs.Read())
        {
            if (i == rs.GetInt32(1))
            {
                course.Items.Add(rs.GetString(2));
            }
        }


        cn.Close();



    }
    protected void Button5_Click(object sender, EventArgs e)
    {

        if (name.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter name');", true);
            name.Focus();
        }
        else if (fname.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter father name');", true);
            fname.Focus();
        }
        else if (add1.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter address 1');", true);
            add1.Focus();
        }
        else if (add2.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter address 2');", true);
            add2.Focus();
        }
        else if (country.Text == "salect country")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please select country');", true);
            country.Focus();
        }
        else if (state.Text == "salect state")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please select state');", true);
            state.Focus();
        }
        else if (city.Text == "salect city")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please select city');", true);
            city.Focus();
        }
        else if (nan.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter nationalty');", true);
            nan.Focus();
        }
        else if (gen.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please choos gender');", true);
            gen.Focus();
        }
        else if (qul.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please marck qualification');", true);
            qul.Focus();
        }
        else if (course.Text == "salect course")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please choos course');", true);
            course.Focus();
        }
        else if (hob.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter hobbies.');", true);
            hob.Focus();
        }
        else if (mob.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter mobile NO.');", true);
            mob.Focus();
        }
        else if (dob.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter date of barth');", true);
            dob.Focus();
        }
        else if (doa.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter date of admition');", true);
            doa.Focus();
        }
        else if (hy.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter high school year');", true);
            hy.Focus();
        }
        else if (hp.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter high school percent');", true);
            hp.Focus();
        }
        else if (hu.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter high school board name');", true);
            hu.Focus();
        }
        else if (hr.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter high school roll NO.');", true);
            hr.Focus();
        }
        else if (iy.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter intermediate  year');", true);
            iy.Focus();
        }
        else if (ip.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter intermediate  percent');", true);
            ip.Focus();
        }
        else if (iu.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter intermediate  board');", true);
            iu.Focus();
        }
        else if (ir.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter intermediate  roll NO.');", true);
            ir.Focus();
        }
        else if (photo.FileName == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please choos photo of 4*4 cm');", true);
            photo.Focus();
        }
        else
        {
            System.IO.FileInfo file = new System.IO.FileInfo(photo.PostedFile.FileName);
            string img = file.Name.Remove((file.Name.Length - file.Extension.Length));
            img = img + System.DateTime.Now.ToString("_ddMMyyhhmmss") + file.Extension;
            string s;
            string id = System.Convert.ToString(Application["x"]);
            
            s = "INSERT INTO ADMISSION ( STU_ID, STU_NAME,STU_F_NAME,STU_PAR_ADD,STU_CURR_ADD,STU_COUNTRY,STU_STATE,STU_CITY,STU_NATI,STU_GENDER,STU_QUAL,STU_COURSE,STU_PHOTO,STU_HOB,STU_MOBILE,STU_DOB,STU_DOA,STU_HPASS_Y,STU_HPER,STU_HUNI,STU_HROLL,STU_IPASS_Y,STU_IPER,STU_IUNI,STU_IROLL) VALUES('" + id + "','" + name.Text + "', '" + fname.Text + "','" + add1.Text + "','" + add2.Text + "','" + country.Text + "','" + state.Text + "','" + city.Text + "','" + nan.Text + "','" + gen.Text + "','" + qul.Text + "','" + course.Text + "','" + img + "','" + hob.Text + "','" + mob.Text + "','" + dob.Text + "','" + doa.Text + "','" + hy.Text + "','" + hp.Text + "','" + hu.Text + "','" + hr.Text + "','" + iy.Text + "','" + ip.Text + "','" + iu.Text + "','" + ir.Text + "')";
            
            cn.Open();
            SqlCommand cmd = new SqlCommand(s, cn);
            int y = 0;
            y = cmd.ExecuteNonQuery();
            if (y == 1)
            {
                string imgPath = "../img/" + img;
                if (photo.PostedFile != null && photo.PostedFile.FileName != "")
                {
                    photo.SaveAs(Server.MapPath(imgPath));
                }
                ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('your form is  successfully submitted',AlertBoxButtons.YesNoCancel);", true);
                Response.Redirect("../student/student.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('your form is not  successfully submitted');", true);
            }
        }
    }
    protected void update_Click(object sender, EventArgs e)
    {

        if (name.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter name');", true);
            name.Focus();
        }
        else if (fname.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter father name');", true);
            fname.Focus();
        }
        else if (add1.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter address 1');", true);
            add1.Focus();
        }
        else if (add2.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter address 2');", true);
            add2.Focus();
        }
        else if (country.Text == "salect country")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please select country');", true);
            country.Focus();
        }
        else if (state.Text == "salect state")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please select state');", true);
            state.Focus();
        }
        else if (city.Text == "salect city")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please select city');", true);
            city.Focus();
        }
        else if (nan.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter nationalty');", true);
            nan.Focus();
        }
        else if (gen.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please choos gender');", true);
            gen.Focus();
        }
        else if (qul.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please marck qualification');", true);
            qul.Focus();
        }
        else if (course.Text == "salect course")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please choos course');", true);
            course.Focus();
        }
        else if (hob.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter hobbies.');", true);
            hob.Focus();
        }
        else if (mob.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter mobile NO.');", true);
            mob.Focus();
        }
        else if (dob.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter date of barth');", true);
            dob.Focus();
        }
        else if (doa.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter date of admition');", true);
            doa.Focus();
        }
        else if (hy.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter high school year');", true);
            hy.Focus();
        }
        else if (hp.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter high school percent');", true);
            hp.Focus();
        }
        else if (hu.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter high school board name');", true);
            hu.Focus();
        }
        else if (hr.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter high school roll NO.');", true);
            hr.Focus();
        }
        else if (iy.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter intermediate  year');", true);
            iy.Focus();
        }
        else if (ip.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter intermediate  percent');", true);
            ip.Focus();
        }
        else if (iu.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter intermediate  board');", true);
            iu.Focus();
        }
        else if (ir.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter intermediate  roll NO.');", true);
            ir.Focus();
        }
        else if (photo.FileName == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please choos photo of 4*4 cm');", true);
            photo.Focus();
        }
        else
        {
            System.IO.FileInfo file = new System.IO.FileInfo(photo.PostedFile.FileName);
            string img = file.Name.Remove((file.Name.Length - file.Extension.Length));
            img = img + System.DateTime.Now.ToString("_ddMMyyhhmmss") + file.Extension;
            string s;
            string i = System.Convert.ToString(Application["sx"]);
            s = "update ADMISSION set STU_NAME='" + name.Text + "',STU_F_NAME='" + fname.Text + "',STU_PAR_ADD='" + add1.Text + "',STU_CURR_ADD='" + add2.Text + "',STU_CITY='" + city.Text + "',STU_STATE='" + state.Text + "',STU_COUNTRY='" + country.Text + "',STU_NATI='" + nan.Text + "',STU_GENDER='" + gen.Text + "',STU_QUAL='" + qul.Text + "',STU_COURSE='" + course.Text + "',STU_PHOTO='" + img + "',STU_MOBILE='" + mob.Text + "',STU_DOB='" + dob.Text + "',STU_DOA='" + doa.Text + "',STU_HOB='" + hob.Text + "',STU_HPASS_Y='" + hy.Text + "',STU_HPER='" + hp.Text + "',STU_HUNI='" + hu.Text + "',STU_HROLL='" + hr.Text + "',STU_IPASS_Y='" + iy.Text + "',STU_IPER='" + ip.Text + "',STU_IUNI='" + iu.Text + "',STU_IROLL='" + ir.Text + "' where STU_ID='" + i + "'";

            cn.Close();

            cn.Open();
            SqlCommand cmd = new SqlCommand(s, cn);
            int y = 0;
            y = cmd.ExecuteNonQuery();
            if (y == 1)
            {
                string imgPath = "../img/" + img;
                if (photo.PostedFile != null && photo.PostedFile.FileName != "")
                {
                    photo.SaveAs(Server.MapPath(imgPath));
                }
                ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('Form is update  successfully');", true);
                Response.Redirect("student_view.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('Form is not  update');", true);
            }
        }
        Application["sx"] = "";
        cn.Close();

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        name.Text = "";

    }
    protected void Button4_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton17_Click(object sender, EventArgs e)
    {
        Response.Redirect("../home.aspx");
    }
    protected void gen_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void course_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}