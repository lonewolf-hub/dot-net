<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="administrater_registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>



    <link href="../plu/Calendar/calendar/css/smoothness/jquery-ui-1.7.1.custom.css" rel="stylesheet" type="text/css" />
    <script src="../plu/Calendar/calendar/js/jquery-1.3.2.min.js" type="text/javascript"></script>
    <script src="../plu/Calendar/calendar/js/jquery-ui-1.7.1.custom.min.js" type="text/javascript"></script>
    
    <script src="../student/js/validation.js" type="text/javascript"></script>

<script type="text/javascript">
    $(function () {
        $("#doa").datepicker({ changeMonth: true, changeYear: true, startYear: 1900, EndYear: 2000 });
        $("#dob").datepicker({ changeMonth: true, changeYear: true });
    });
    function Reset1_onclick() {

    } function add3_onclick() {

    }

</script>



</head>
<body>
    <center>
    <form id="form1" runat="server">
    <div style="border: 1px solid #003366; padding: 1px; margin: 1px; height: 703px; color: #003366; font-weight: bold; width: 1016px;" 
        align="right">
    <div align="center" 
            
            
            style="color: #FFFFFF; background-color: #003366; font-weight: bold; height: 35px; bottom: 3px;">

        STUDENT REGISTRATION FORM</div>
        <div style="background-color: #003366">
            <asp:LinkButton ID="LinkButton17" runat="server" Font-Bold="True" 
                ForeColor="White" onclick="LinkButton17_Click">logout</asp:LinkButton>
        </div>
        <div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div>
        <div style="width: 234px; float: left; height: 35px;" align="left">

            NAME</div>
    <div style="width: 234px; float: left; height: 35px;" align="left">

        <asp:TextBox ID="name" onkeypress="return isNumberKey(event)" runat="server" Width="194px" BorderColor="#003366" 
            BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
        </div>
    <div style="width: 308px; float: left; height: 35px;" align="left">

        FATHER NAME</div>
        <div style="width: 234px; height: 35px;" align="left">

        <asp:TextBox ID="fname" onkeypress="return isNumberKey(event)" runat="server" Width="207px" BorderColor="#003366" 
            BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
        </div>
        <div style="width: 234px; height: 35px; float: left;" align="left">

            ADDRESS 1</div>
    <div style="width: 234px; height: 35px; float: left;" align="left">

        <asp:TextBox ID="add1" runat="server" TextMode="MultiLine"></asp:TextBox>
        </div>
    <div style="width: 308px; height: 35px; float: left;" align="left">

        ADDRESS 2</div>
    <div style="width: 234px; height: 35px;" align="left">

        <asp:TextBox ID="add2" runat="server" TextMode="MultiLine"></asp:TextBox>
        </div>
        <div style="width: 234px; height: 35px; float: left;" align="left">

            COUNTRY</div>
    <div style="width: 234px; height: 35px; float: left;" align="left">

        <asp:DropDownList ID="country" runat="server" Height="23px" Width="201px" 
            AutoPostBack="True" onselectedindexchanged="country_SelectedIndexChanged">
        </asp:DropDownList>
        </div>
    <div style="width: 308px; height: 35px; float: left;" align="left">

        STATE </div>
    <div style="width: 234px; height: 35px;" align="left">

        <asp:DropDownList ID="state" runat="server" Height="23px" Width="214px" 
            AutoPostBack="True" onselectedindexchanged="state_SelectedIndexChanged">
        </asp:DropDownList>
        </div>
        <div style="width: 234px; height: 35px; float: left;" align="left">

            CITY</div>
    <div style="width: 234px; height: 35px; float: left;" align="left">

        <asp:DropDownList ID="city" runat="server" Height="24px" Width="201px">
        </asp:DropDownList>
        </div>
    <div style="width: 308px; height: 35px; float: left;" align="left">

        NATIONALTY</div>
    <div style="width: 234px; height: 35px;" align="left">

        <asp:TextBox ID="nan" onkeypress="return isNumberKey(event)" runat="server" BorderColor="#003366" 
            BorderStyle="Solid" BorderWidth="1px" Width="213px"></asp:TextBox>
        </div>
        <div style="width: 234px; height: 72px; float: left;" align="left">

            GENDER</div>
    <div style="width: 234px; height: 72px; float: left;" align="left">

        <asp:RadioButtonList ID="gen" runat="server" Height="16px" 
            onselectedindexchanged="gen_SelectedIndexChanged" Width="209px">
            <asp:ListItem>male</asp:ListItem>
            <asp:ListItem>female</asp:ListItem>
        </asp:RadioButtonList>
        &nbsp;</div>
    <div style="width: 308px; height: 72px; float: left;" align="left">

        QUALIFICATION</div>
    <div style="border: 1px solid #003366; width: 234px; overflow:scroll; height: 72px; margin-left: 40px;" 
            align="left">

        <asp:RadioButtonList ID="qul" runat="server" AutoPostBack="True" 
            onselectedindexchanged="RadioButtonList1_SelectedIndexChanged">
            <asp:ListItem>Intermediate</asp:ListItem>
            <asp:ListItem>Graduate</asp:ListItem>
        </asp:RadioButtonList>
        </div>
        <div style="width: 234px; height: 104px; float: left;" align="left">

            COURSE</div>
    <div style="width: 234px; height: 104px; float: left;" align="left">

        <asp:DropDownList ID="course" runat="server" Height="24px" Width="207px" 
            onselectedindexchanged="course_SelectedIndexChanged">
        </asp:DropDownList>

        </div>
    <div style="width: 308px; height: 104px; float: left;" align="left">

        PHOTO</div>
    <div style="width: 234px; height: 104px;" align="left">

        <asp:FileUpload ID="photo" runat="server" BackColor="White" 
            BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" 
            ForeColor="#003366" />

        <asp:Image ID="Image1" runat="server" Height="80px" Visible="False" 
            Width="98px" ImageAlign="Top" />

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        </div>
        <div style="width: 234px; height: 35px; float: left;" align="left">

            HOBBIES</div>
    <div style="width: 234px; height: 35px; float: left;" align="left">

        <asp:TextBox ID="hob" runat="server" TextMode="MultiLine"></asp:TextBox>
        </div>
    <div style="width: 308px; height: 35px; float: left;" align="left">

        MOBILE</div>
    <div style="width: 234px; height: 35px;" align="left">

        <asp:TextBox ID="mob" onkeypress="return isNumber(event)" runat="server" Width="205px" BorderColor="#003366" 
            BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>

        </div>
        <div style="width: 234px; height: 35px; float: left;" align="left">

            DOB</div>
    <div style="width: 234px; height: 35px; float: left;" align="left">

        <asp:TextBox ID="dob" runat="server" Width="198px" BorderColor="#003366" 
            BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>

        </div>
    <div style="width: 308px; height: 35px; float: left;" align="left">

        DOA</div>
    <div style="width: 234px; height: 35px;" align="left">

        <asp:TextBox ID="doa" runat="server" Width="205px" BorderColor="#003366" 
            BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>

        </div>
        <div align="center" style="color: #FFFFFF; background-color: #003366">HIGH SCOOL 
            INFORMATION</div>
            <div style="width: 234px; height: 35px; float: left;" align="left">

                PASSING YEAR</div>
    <div style="width: 234px; height: 35px; float: left;" align="left">

        <asp:TextBox ID="hy" onkeypress="return isNumber(event)" runat="server" 
            Width="195px" BorderColor="#003366" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>

        </div>
    <div style="width: 308px; height: 35px; float: left;" align="left">

        PERCENT</div>
    <div style="width: 234px; height: 35px;" align="left">

        <asp:TextBox ID="hp" onkeypress="return isNumber(event)" runat="server" BorderColor="#003366" 
            BorderStyle="Solid" BorderWidth="1px" Width="209px"></asp:TextBox>

        </div>
       <div style="width: 234px; height: 35px; float: left;" align="left">

            BOARD</div>
    <div style="width: 234px; height: 35px; float: left;" align="left">

        <asp:TextBox ID="hu" onkeypress="return isNumberKey(event)" runat="server" Width="198px" BorderColor="#003366" 
            BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>

        </div>
    <div style="width: 308px; height: 35px; float: left;" align="left">

        ROLL NO.</div>
    <div style="width: 234px; height: 35px;" align="left">

        <asp:TextBox ID="hr" onkeypress="return isNumber(event)" runat="server" Width="212px" BorderColor="#003366" 
            BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>

        </div>
        <div align="center" style="color: #FFFFFF; background-color: #003366">INTERMEDIATE 
            INFORMATION</div>
            <div style="width: 234px; height: 35px; float: left;" align="left">

                PASSING YEAR</div>
    <div style="width: 234px; height: 35px; float: left;" align="left">

        <asp:TextBox ID="iy" onkeypress="return isNumber(event)" runat="server" 
            Width="193px" BorderColor="#003366" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>

        </div>
    <div style="width: 308px; height: 35px; float: left;" align="left">

        PERCENT</div>
    <div style="width: 234px; height: 35px;" align="left">

        <asp:TextBox ID="ip" onkeypress="return isNumber(event)" runat="server" BorderColor="#003366" 
            BorderStyle="Solid" BorderWidth="1px" Width="209px"></asp:TextBox>

        </div>
       <div style="width: 234px; height: 35px; float: left;" align="left">

            BOARD</div>
    <div style="width: 234px; height: 35px; float: left;" align="left">

        <asp:TextBox ID="iu" onkeypress="return isNumberKey(event)" runat="server" Width="198px" BorderColor="#003366" 
            BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>

        </div>
    <div style="width: 308px; height: 35px; float: left;" align="left">

        ROLL NO.</div>
    <div style="width: 234px; height: 35px;" align="left">

        <asp:TextBox ID="ir" onkeypress="return isNumber(event)" runat="server" Width="212px" BorderColor="#003366" 
            BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>

        </div>
        <div style="width: 1014px; height: 35px; float: left;" align="center">

            <asp:Button ID="update" runat="server" Text="Update" BackColor="#003366" 
                BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" ForeColor="#FFFFCC" 
                Visible="False" onclick="update_Click" />
            <asp:Button ID="Button5" runat="server" BackColor="#003366" BorderStyle="Solid" 
                BorderWidth="0px" Font-Bold="True" ForeColor="White" onclick="Button5_Click" 
                Text="save" style="height: 22px" />
            <asp:Button ID="Button3" runat="server" Text="Reset" BackColor="#003366" 
                BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" ForeColor="White" 
                onclick="Button3_Click" />
            <asp:Button ID="Button4" runat="server" BackColor="#003366" BorderStyle="Solid" 
                BorderWidth="1px" Font-Bold="True" ForeColor="White" onclick="Button4_Click" 
                Text="Cancel" style="height: 24px" />
        </div>
    </div>
    </form></center>

</body>
</html>
