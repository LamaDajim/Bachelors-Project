<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Xs.aspx.cs" Inherits="About" %>

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
.divmain4 
{
margin-left:auto;           margin-right:auto;     margin-bottom:5px;
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
    <br />
           <center style="height: 17px"> 
               ++++++</center>
        
			  <div id="div4" class="divmain4">
			  <center>
               &nbsp;</center>
			</div>
			 <div id="div2" class="divmain4">
			  <center>

               </center>
			</div>

            <br />


             <div id="div5" class="divmain4">
			  <center>

               <img src=star-2.png width=40px/><img src=star-2.png  width=40px /><img src=star-2.png  width=40px />
               <img src=star-2.png  width=40px /><img src=star-2.png  width=40px />
           
               
               </center>
			</div>

            <br />
 <hr />
         
         <br />
        <asp:GridView ID="GridView1" runat="server" BackColor="White" 
            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            Width="100%" EmptyDataText="No Result Found" AllowPaging="True" 
             AutoGenerateColumns="False" PageSize="6" 
             onrowcommand="GridView1_RowCommand">
            <EmptyDataRowStyle BackColor="#9999FF" BorderColor="Black" BorderWidth="1px" />
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#344E56" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#eeeeee" Font-Bold="True" ForeColor="Black" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>

       

       
        
   

            <br />

            </p>
</asp:Content>
