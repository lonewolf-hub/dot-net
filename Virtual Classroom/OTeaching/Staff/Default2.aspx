<%@ Page Title="" Language="C#" MasterPageFile="~/Staff/Staff.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Staff_Default2" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link href="staff1.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
.upper-case
{
    text-transform: uppercase
}

        .auto-style1 {
            width: 72%;
            height: 0px;
        }
        .auto-style2 {
            width: 142px;
        }
        .auto-style3 {
            width: 142px;
            height: 43px;
        }
        .auto-style4 {
            height: 43px;
            width: 362px;
        }
        .auto-style5 {
            width: 362px;
        }
        .auto-style6 {
            text-align: right;
            color: #369;
            height: 28px;
        }
        .auto-style7 {
            height: 28px;
        }
        .auto-style8 {
            color: #fff;
            transition: background .7s ease;
            border-radius: 2px;
            cursor: pointer;
            border: 2px solid #369;
            background: #369;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <div class="tbl">
        <div>
    <table class="tbl"  style="overflow:scroll">
         <tr>
            <td class="tblhead" bgcolor="#369">
                Attendance <br />
            </td>
        </tr>
     </table>
         </div>
    <div>
        <br />
     <table class="auto-style1" bgcolor="white" border="1" frame="box">
      <tr>
            <td class="auto-style3" align="center" ><b>Select Branch</b></td>
            <td class="auto-style4" >
                <asp:DropDownList ID="DropDownList1" runat="server" Height="31px" Width="336px" DataSourceID="SqlDataSource1" DataTextField="Course" DataValueField="Course">
                </asp:DropDownList>
            </td>
        </tr>
          
          <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">
                <asp:Button ID="Button1" runat="server" Text="Mark Attendance" OnClick="Button14_Click" CssClass="btn" Height="28px" Width="190px" />
            </td>
        </tr>
          
    </table>
     </div>
    <div>
       
        <br />
        <asp:Label ID="Label3" runat="server" BackColor="#ABD3F2" BorderColor="Black"></asp:Label>
        <br />
        <br />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>
<asp:Timer ID="Timer1" runat="server" Interval="1000">
</asp:Timer>
<asp:Label ID="lblcurrenttime" runat="server" Text=""></asp:Label>
    r
</ContentTemplate>
</asp:UpdatePanel>
        <br />
     <table>
         <tr>
        <td class="auto-style6" style="color:#369">Course :</td>       
   
        <td class="auto-style7">
            <asp:TextBox ID="course" runat="server" CssClass="txt" CausesValidation="True"></asp:TextBox>
        </td>
         <td>
                   
             <asp:DropDownList runat="server" ID="ddlTime">
</asp:DropDownList>

                </td>
                <td>
                
             <asp:DropDownList runat="server" ID="ddlTime1">
</asp:DropDownList>
<br />
                </td>
            <td><asp:Button ID="Button2" Text="Schedule" runat="server" OnClick="Button2_Clicked"  CssClass="btn"  /><br />
        </td> </tr>
   
        </table>
   <br />
       
        <div>
        <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" AutoGenerateColumns="False" style="overflow:scroll">
                             
                                <FooterStyle BackColor="White" ForeColor="#000066" />
                                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                <RowStyle ForeColor="#000066" />
                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#00547E" />
                                    <Columns>
                                        <asp:BoundField DataField="rollno" HeaderText="Roll no" >
                                        <ControlStyle CssClass="upper-case" />
                                        <ItemStyle CssClass="upper-case" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="name" HeaderText="Name" />
                                    <asp:TemplateField HeaderText="Mark Attendance">
                                        <ItemTemplate>
                                            <asp:RadioButton ID="RadioButton3" runat="server" Checked="True" GroupName="g2" Text="Present" />
                                            <asp:RadioButton ID="RadioButton4" runat="server" GroupName="g2" Text="Absent" />
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Right" />
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
            </div>
            
        <br />
        <asp:Button ID="Button15" runat="server" OnClick="Button15_Click" Text="Save Attendance"  CssClass="auto-style8" Height="29px" Width="146px" />
        <br />
        <br />
        <asp:Label ID="Label4" runat="server"></asp:Label>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OTeachingConnectionString2 %>" SelectCommand="SELECT DISTINCT [Course] FROM [StudentMst]"></asp:SqlDataSource>
  
       
        </div>
    </div>
      <script type = "text/javascript">
  function DisableButton() {
      document.getElementById("<%=Button2.ClientID %>").disabled = true;
  }
  window.onbeforeunload = DisableButton;
      </script>
</asp:Content>
