<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="facu.aspx.cs" Inherits="administrater_facu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

 <div style="height:442px; overflow:scroll; width: 825px;" align="center">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" 
        ShowHeader="false" Width="154px">
        <Columns>
            <asp:ImageField  DataImageUrlField="Value" ControlStyle-Height="200" 
                ControlStyle-Width="200" >
<ControlStyle Height="320px" Width="640px"></ControlStyle>
            </asp:ImageField>
        </Columns>
        <RowStyle HorizontalAlign="Left" />
    </asp:GridView>
    
</div>

</asp:Content>

