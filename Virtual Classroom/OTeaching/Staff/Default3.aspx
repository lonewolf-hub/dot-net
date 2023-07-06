<%@ Page Title="" Language="C#" MasterPageFile="~/Staff/Staff.master" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Staff_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<style type="text/css">
.upper-case
{
    text-transform: uppercase
}
    </style>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css"/>
    <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
    <script type="text/javascript" language="javascript">
        $(function () {
            $("#<%=TextBox2.ClientID %>").datepicker({
                changeMonth: true,
                changeYear: true,
                dateFormat: "dd-mm-yy",
                yearRange: '2000:2100'
            });
        });
    </script>

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
            <td class="auto-style4">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="31px" Width="336px" DataSourceID="SqlDataSource1" DataTextField="Course" DataValueField="Course">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" align="center" ><b>Select Course</b>

            </td>
            <td>

                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="class" DataValueField="class" Width="336px" Height="31px">
                </asp:DropDownList>

            </td>
        </tr>
         <tr>
                  <td class="auto-style3" align="center" ><b>Select Date</b>
             
             </td>
             <td>

                 <asp:TextBox ID="TextBox2" runat="server" Width="334px"></asp:TextBox>

             </td>
         </tr>
          <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">
                <asp:Button ID="Button1" runat="server" Text="Show Attendance" OnClick="Button14_Click" CssClass="btn" Height="28px" Width="190px" />
            </td>
        </tr>
          
    </table>
     </div>
    <div>
       
        <br />
        
        <br />
     
   
        <div>
        <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" style="overflow:scroll" AutoGenerateColumns="False">
                             
                                <Columns>
                                    <asp:BoundField DataField="rollno" HeaderText="Roll No." >
                                    <ControlStyle CssClass="upper-case" />
                                    <ItemStyle CssClass="upper-case" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="studentname" HeaderText="Name" />
                                    <asp:BoundField DataField="dateofclasss" HeaderText="Date" />
                                    <asp:BoundField DataField="attendancestatus" HeaderText="Status" />
                                    <asp:BoundField DataField="class" HeaderText="Course" />
                                    <asp:BoundField DataField="starttime" HeaderText="Start Time" />
                                    <asp:BoundField DataField="endtime" HeaderText="End Time" />
                                </Columns>
                             
                                <FooterStyle BackColor="White" ForeColor="#000066" />
                                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                <RowStyle ForeColor="#000066" />
                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#00547E" />
                            </asp:GridView>
            </div>
            
  
        <br />
        <asp:Label ID="Label4" runat="server"></asp:Label>
        <br />
        <br />
  
       
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:OTeachingConnectionString2 %>" SelectCommand="SELECT DISTINCT [class] FROM [CourseMst]">
        </asp:SqlDataSource>
  
       
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OTeachingConnectionString2 %>" SelectCommand="SELECT DISTINCT [Course] FROM [StudentMst]"></asp:SqlDataSource>
  
       
        </div>
    </div>
</asp:Content>

