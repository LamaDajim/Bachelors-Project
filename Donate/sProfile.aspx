<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="sProfile.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
    .style1
    {
        font-size: large;
    }
</style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">


        <br />
        
        <center style="height: 17px"> 
            <b><font color=#3b3b3b>  &nbsp;<span class="style1">EDIT PROFILE </span> </font></b>
        </center>
        <br />

<%--   <div id="div1" runat=server style="text-align:center; font-size:14;display:block; overflow:auto; margin-top:20; margin-bottom:50; margin-left:auto; 
         margin-right:auto; padding:10px; background-color:White; width:86%;">
         <center>
         
         
         </center>
   </div>--%>
    
    
   
  <center>
       <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="90%" 
          BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
          CellPadding="3" GridLines="Horizontal">
           <AlternatingRowStyle BackColor="#BEE4D7" ForeColor="#FF367D"/>
           <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
           <FooterStyle BackColor="#B5C7DE" ForeColor="#F7F7F7" />
           <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#ECAE3C" />
           <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
           <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
       </asp:DetailsView>
      <br />

       <br />

     
        
   
        
   </center>
        




    </asp:Content>
