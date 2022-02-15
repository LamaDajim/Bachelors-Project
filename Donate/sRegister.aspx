<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="sRegister.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">

   

</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">


        
        
<center>
   <%-- <asp:Button ID="Button1" runat="server" Text="Login as Student" 
        onclick="Button1_Click1" />--%>
       
      <br />
      

      

			  <center>
			
                     <h2>
                         Register Page
        <asp:Label ID="Label1" runat="server" style="color: #CC0000"></asp:Label>
</h2>
<hr />

                    
        <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Identity" Width="300px"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                         ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="*" 
                         style="color: #FF0000; font-weight: 700"></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                         ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="10 NUMBER" 
                         style="color: #FF0000" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
    <hr>
            <asp:TextBox ID="TextBox2" runat="server"  TextMode="Password"
                         placeholder="Enter Password" Width="300px"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                         ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="*" 
                         style="color: #FF0000; font-weight: 700"></asp:RequiredFieldValidator>
    <hr />
     <asp:TextBox ID="TextBox3" runat="server"  TextMode="Password"
                         placeholder="Re-Password" Width="300px"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                         ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="*" 
                         style="color: #FF0000; font-weight: 700"></asp:RequiredFieldValidator>
                     <asp:CompareValidator ID="CompareValidator1" runat="server" 
                         ControlToCompare="TextBox2" ControlToValidate="TextBox3" Display="Dynamic" 
                         ErrorMessage="Not Match" style="color: #FF0000"></asp:CompareValidator>
    <hr />
     <asp:TextBox ID="TextBox4" runat="server"  
                         placeholder="Enter Phone" Width="300px"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                         ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="*" 
                         style="color: #FF0000; font-weight: 700"></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                         ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="10 NUMBER" 
                         style="color: #FF0000" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
   
   <hr />
     <asp:TextBox ID="TextBox5" runat="server"  
                         placeholder="Enter Birth-Year" Width="300px"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                         ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="*" 
                         style="color: #FF0000; font-weight: 700"></asp:RequiredFieldValidator>
                     <asp:RangeValidator ID="RangeValidator1" runat="server" 
                         ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="Range 1940-2007" 
                         MaximumValue="2007" MinimumValue="1940" style="color: #FF0000" Type="Integer"></asp:RangeValidator>
  
   <hr />
     <asp:TextBox ID="TextBox7" runat="server"  
                         placeholder="Enter Email" Width="300px"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                         ControlToValidate="TextBox7" Display="Dynamic" ErrorMessage="*" 
                         style="color: #FF0000; font-weight: 700"></asp:RequiredFieldValidator>
  
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                         ControlToValidate="TextBox7" Display="Dynamic" ErrorMessage="Format Error" 
                         style="color: #FF0000" 
                         ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
  



     <hr />
         
                  <asp:DropDownList ID="DropDownList1" runat="server" Width="299px">
                      <asp:ListItem>Male</asp:ListItem>
                      <asp:ListItem>FeMale</asp:ListItem>
                  </asp:DropDownList>
        <hr />     
                  <asp:DropDownList ID="DropDownList2" runat="server" Width="299px">
                      <asp:ListItem>Ryiadh</asp:ListItem>
                      <asp:ListItem>Jeddah</asp:ListItem>
                      <asp:ListItem>Mecca</asp:ListItem>
                      <asp:ListItem>Khobar</asp:ListItem>
                      <asp:ListItem>Abha</asp:ListItem>
                  </asp:DropDownList>
         
    <hr />
     <asp:TextBox ID="TextBox6" runat="server"  
                         placeholder="other Info" Width="838px"></asp:TextBox>
    <hr />

        <asp:Button ID="Button1" runat="server" Text="Sing Up " 
            onclick="Button1_Click" Width="139px" />
    <hr />


                     <asp:Label ID="Label2" runat="server" Text="Data"></asp:Label>


         <br>

			</center>
			
			<%--  </td>
			  </tr>
			  </table>--%>


      

</center>

<%--    <div id="div1" runat=server style="text-align:justify; font-size:14;display:block; float:left; overflow:auto; margin-top:20; margin-bottom:20; margin-left:auto; padding:10px;
         margin-right:auto; background-color:White;">


    
    </div>--%>
   


<br />

    </asp:Content>
