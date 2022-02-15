<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/TSite.master" AutoEventWireup="true"
    CodeFile="TDefault.aspx.cs" Inherits="_Default" %>

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
        Login Page
        <asp:Label ID="Label1" runat="server" style="color: #CC0000"></asp:Label>
</h2>
<hr />

                    
        <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter UserName" Width="300px"></asp:TextBox>
    <hr>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" 
                         placeholder="Enter Password" Width="300px"></asp:TextBox>
    <hr />
        <asp:Button ID="Button1" runat="server" Text="Sing In " 
            onclick="Button1_Click" Width="139px" />
    
         <br>
			</center>
			
			<%--  </td>
			  </tr>
			  </table>--%>

              <br />
              <br />








             <br />
    </asp:Content>
