<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="modify.aspx.cs" Inherits="administrater_modify" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
    {
        width: 100%;
            height: 161px;
        }
    .style2
    {
        height: 16px;
    }
        .style4
        {
            height: 16px;
            width: 631px;
        }
        .style5
        {
            width: 631px;
        }
    </style>

     <script src="multiple-file-upload/jquery.js" type="text/javascript"></script>
    <script src="multiple-file-upload/jquery.MultiFile.js" type="text/javascript"></script>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">


<div align="right">
            <asp:LinkButton ID="LinkButton17" runat="server" Font-Bold="True" 
                ForeColor="#003366" onclick="LinkButton17_Click">logout</asp:LinkButton>
        </div>
    <div style="height: 624px">
        <asp:Panel ID="Panel1" runat="server" Visible="False">
            <table class="style1" id="table1">
                <tr>
                    <td align="center" bgcolor="White" colspan="3" 
                
                
                
                        style="color: #FFFFFF; font-weight: bold; font-size: large; background-color: #003366;">
                        Modify Address</td>
                </tr>
                <tr>
                    <td align="center" 
                style="color: #FFFFFF; font-weight: bold; background-color: #003366">
                        Country</td>
                    <td align="center" 
                style="color: #FFFFFF; font-weight: bold; background-color: #003366">
                        State&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td align="center" 
                style="color: #FFFFFF; font-weight: bold; background-color: #003366">
                        City&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:DropDownList ID="DropDownList1" runat="server" Visible="False" 
                            onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td align="center">
                        <asp:DropDownList ID="DropDownList2" runat="server" Visible="False">
                        </asp:DropDownList>
                    </td>
                    <td align="center">
                        <asp:DropDownList ID="DropDownList3" runat="server" Visible="False">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td align="center" class="style2">
                        <asp:TextBox ID="TextBox1" onkeypress="return isNumberKey(event)" runat="server" Visible="False"></asp:TextBox>
                    </td>
                    <td align="center" class="style2">
                        <asp:TextBox ID="TextBox2" onkeypress="return isNumberKey(event)" runat="server" Visible="False"></asp:TextBox>
                    </td>
                    <td align="center" class="style2">
                        <asp:TextBox ID="TextBox3" onkeypress="return isNumberKey(event)" runat="server" Visible="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:Button ID="Button1" runat="server" BackColor="#003366" BorderStyle="Solid" 
                    BorderWidth="1px" Font-Bold="True" ForeColor="White" Text="Add" Visible="False" 
                            onclick="Button1_Click" />
                    </td>
                    <td align="center">
                        <asp:Button ID="Button8" runat="server" BackColor="#003366" BorderStyle="Solid" 
                    BorderWidth="1px" Font-Bold="True" ForeColor="White" Text="Add" Visible="False" 
                            onclick="Button8_Click" />
                    </td>
                    <td align="center">
                        <asp:Button ID="Button9" runat="server" BackColor="#003366" BorderStyle="Solid" 
                    BorderWidth="1px" Font-Bold="True" ForeColor="White" Text="Add" Visible="False" 
                            onclick="Button9_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="background-color: #003366" width="2">
                        &nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
        <br />
        <asp:Panel ID="Panel2" runat="server" Visible="False">
            <table class="style1" id="table2">
                <tr>
                    <td align="center" bgcolor="White" colspan="3" 
                
                
                
                        
                        style="color: #FFFFFF; font-weight: bold; font-size: large; background-color: #003366;">
                        Modify Course</td>
                </tr>
                <tr>
                    <td align="left" 
                style="color: #003366; font-weight: bold" class="style5">
                        New Course</td>
                    <td align="left" class="style5" style="color: #003366; font-weight: bold">
                        Update</td>
                    <td align="center">
                        <asp:DropDownList ID="DropDownList5" runat="server" Visible="False">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td align="left" class="style4" style="color: #003366; font-weight: bold">
                        <asp:RadioButtonList ID="qul1" runat="server" AutoPostBack="True" 
                            Font-Bold="True" ForeColor="#003366" Visible="False">
                            <asp:ListItem>Intermediate</asp:ListItem>
                            <asp:ListItem>Graduate</asp:ListItem>
                        </asp:RadioButtonList>
                        COURSE NAME&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="cou" onkeypress="return isNumberKey(event)" runat="server" Visible="False"></asp:TextBox>
                        <br />
                        COURSE AMOUNT<asp:TextBox ID="camt" onkeypress="return isNumber(event)" 
                            runat="server" Visible="False"></asp:TextBox>
                    </td>
                    <td align="left" class="style4" style="color: #003366; font-weight: bold">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="DropDownList6" runat="server" AutoPostBack="True" 
                            Visible="False" 
                            onselectedindexchanged="DropDownList6_SelectedIndexChanged">
                        </asp:DropDownList>
                        <br />
                        COURSE NAME&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="cou0" runat="server" onkeypress="return isNumberKey(event)" 
                            Visible="False"></asp:TextBox>
                        <br />
                        COURSE AMOUNT<asp:TextBox ID="camt0" runat="server" 
                            onkeypress="return isNumber(event)" Visible="False"></asp:TextBox>
                    </td>
                    <td align="center" class="style2">
                        <asp:ListBox ID="ListBox1" runat="server" Height="67px" Visible="False" 
                            Width="148px"></asp:ListBox>
                    </td>
                </tr>
                <tr>
                    <td align="left" class="style5">
                        <asp:Button ID="Button6" runat="server" BackColor="#003366" BorderStyle="Solid" 
                    BorderWidth="1px" Font-Bold="True" ForeColor="White" Text="Add" 
                            onclick="Button6_Click" Visible="False" />
                    </td>
                    <td align="center" class="style5">
                        <asp:Button ID="upt" runat="server" BackColor="#003366" BorderStyle="Solid" 
                            BorderWidth="0px" Font-Bold="True" ForeColor="White" onclick="upt_Click" 
                            Text="Update" Visible="False" />
                    </td>
                    <td align="center">
                        <asp:Button ID="Button7" runat="server" BackColor="#003366" BorderStyle="Solid" 
                    BorderWidth="1px" Font-Bold="True" ForeColor="White" Text="Delete" 
                            Visible="False" onclick="Button7_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="background-color: #003366">
                        &nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
        <br />
    <br />
        <asp:Panel ID="Panel3" runat="server" Height="158px" Visible="False">
            <table class="style1" id="table3">
                <tr>
                    <td align="center" bgcolor="White" colspan="3" 
                
                
                
                        style="color: #FFFFFF; font-weight: bold; font-size: large; background-color: #003366;">
                        Modify Image</td>
                </tr>
                <tr>
                    <td align="center" 
                style="color: #FFFFFF; font-weight: bold; background-color: #003366">
                        Student</td>
                    <td align="center" 
                style="color: #FFFFFF; font-weight: bold; background-color: #003366">
                        Faculty&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td align="center" 
                style="color: #FFFFFF; font-weight: bold; background-color: #003366">
                        Others</td>
                        
                </tr>
                <tr>
                    <td align="center">
                        <asp:FileUpload ID="FileUpload1" AllowMultiple="True" runat="server" class="multi"/>
                    </td>
                    <td align="center">
                        <asp:FileUpload ID="FileUpload2" AllowMultiple="True" runat="server" class="multi" />
                    </td>
                    <td align="center">
                        <asp:FileUpload ID="FileUpload3" AllowMultiple="True" runat="server" class="multi" />
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:Button ID="Button10" runat="server" BackColor="#003366" 
                    BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" ForeColor="White" 
                    Text="Add" onclick="Button10_Click" />
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td align="center">
                        <asp:Button ID="Button11" runat="server" BackColor="#003366" 
                    BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" ForeColor="White" 
                    Text="Add" onclick="Button11_Click" />
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td align="center">
                        <asp:Button ID="Button12" runat="server" BackColor="#003366" 
                    BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" ForeColor="White" 
                    Text="Add" onclick="Button12_Click" />
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="background-color: #003366" align="center">
                        &nbsp;</td>
                </tr>
            </table>
            <br />
        </asp:Panel>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button13" runat="server" BorderColor="White" 
            BorderStyle="Solid" Font-Bold="True" ForeColor="#003366" 
            onclick="Button13_Click" Text="Back" />
</div>

</asp:Content>

