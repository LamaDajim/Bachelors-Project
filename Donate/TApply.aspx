<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/TSite.master" AutoEventWireup="true"
    CodeFile="TApply.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
<style>
#divmain4 
{
margin-left:auto;           margin-right:auto;     margin-bottom:0px;
position:relative;          left:0px;              top:10px;
border:2px solid #a1a1a1;   padding:10px 10px;     background:#ffffff;
border-radius:25px;         width:90%;           height:100%; 

text-align:right;           line-height:25px;      font-size:16px;
}
#divmain1
{
margin-left:auto;           margin-right:auto;     margin-bottom:0px;
position:relative;          left:0px;              top:10px;
border:2px solid #a1a1a1;   padding:10px 10px;     background:#ffffff;
border-radius:25px;         width:70%;           height:100%; 

text-align:right;           line-height:25px;      font-size:16px;
}
</style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">




            <%-- <table width=80% align=center height=142 border=0 style="border-collapse: collapse; background-color:#ffffff; border-radius:20px;" >
			  <tr>
			  <td align=center valign=top width=100% >--%>

			  <center>
			
                     <h2>
                         Apply as Patient
        <asp:Label ID="Label1" runat="server" style="color: #CC0000"></asp:Label>
</h2>
<hr />

                    
        <asp:TextBox ID="TextBox1" runat="server" placeholder="Note" Width="300px"></asp:TextBox>
    
    <hr />
    
    
                  <asp:DropDownList ID="DropDownList2" runat="server" Width="299px">
                      <asp:ListItem>City1</asp:ListItem>
                      <asp:ListItem>City2</asp:ListItem>
                      <asp:ListItem>City3</asp:ListItem>
                  </asp:DropDownList>
         
    
    <hr />
        <asp:CheckBox ID="CheckBox1" runat="server" Text="Element 1" />
        <asp:CheckBox ID="CheckBox2" runat="server" Text="Element 2" />
        <asp:CheckBox ID="CheckBox3" runat="server" Text="Element 3" />
        <asp:CheckBox ID="CheckBox4" runat="server" Text="Element 4" />
    <hr />
          <a href=#>You have to go to nearest center for the analysis test </a>
    <hr />        
        <asp:Button ID="Button1" runat="server" Text="Apply " 
            onclick="Button1_Click" Width="139px" />
    <hr />
       
                     <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                         AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
                         BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                         EmptyDataText="No Result Found" PageSize="6" Width="100%">
                         <EmptyDataRowStyle BackColor="#9999FF" BorderColor="Black" BorderWidth="1px" />
                         <FooterStyle BackColor="White" ForeColor="#000066" />
                         <HeaderStyle BackColor="#11Bb88" Font-Bold="True" ForeColor="White" />
                         <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                         <RowStyle ForeColor="#000066" />
                         <SelectedRowStyle BackColor="#5C2931" Font-Bold="True" ForeColor="White" />
                         <SortedAscendingCellStyle BackColor="#F1F1F1" />
                         <SortedAscendingHeaderStyle BackColor="#007DBB" />
                         <SortedDescendingCellStyle BackColor="#CAC9C9" />
                         <SortedDescendingHeaderStyle BackColor="#00547E" />
                     </asp:GridView>
       
    <hr />
         <br>
			</center>
			
			<%--  </td>
			  </tr>
			  </table>--%>

              <br />
              <br />








             <br />
    </asp:Content>
