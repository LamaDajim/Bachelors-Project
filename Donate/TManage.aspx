<%@ Page Title="About Us" Language="C#" MasterPageFile="~/TSite.master" AutoEventWireup="true"
    CodeFile="TManage.aspx.cs" Inherits="About" %>

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
border-radius:25px;         width:90%;           height:100%; 

text-align:right;           line-height:25px;      font-size:16px;
}
tr:hover{background-color:#eeeeee; }
tr {text-align:center;}

</style>
<%
////overflow:auto;--
%> 
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

    <p>
        
    
			  <div id="divmain4">
			  <center>
             

			        

                
                  <asp:Button ID="Button3" runat="server" Text="Search" 
                      onclick="Button3_Click" />
                    
                 
                 
              <asp:TextBox ID="TextBox1" runat="server" placeholder=" Date dd/mm/yyyy" Width="227px"></asp:TextBox> 
             

                 
			</center>
			</div>
		



    <center>
         
         <br />
        <asp:GridView ID="GridView1" runat="server" BackColor="White" 
            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            Width="100%" EmptyDataText="No Result Found" AllowPaging="True" 
             AutoGenerateColumns="False" PageSize="6" 
             onrowcommand="GridView1_RowCommand">
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



       
         <br />
         <hr />
         <asp:Label ID="Label1" runat="server" 
             style="color: #546DA3; font-size: medium;"> Details </asp:Label>



       
         <br />

         <hr />
        <asp:Button ID="Button1" runat="server" Text="Accept" 
             onclick="Button1_Click1" Width="61px" />

        &nbsp;<asp:Button ID="Button2" runat="server" Text="Reject" 
             onclick="Button2_Click1" Width="61px" />
        <hr />
       
         <br />



        </center>
    </p>
</asp:Content>
