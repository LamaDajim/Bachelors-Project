<%@ Page Title="About Us" Language="C#" MasterPageFile="~/AdminSite.master" AutoEventWireup="true"
    CodeFile="ACenter.aspx.cs" Inherits="About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">

    <style>
.divmain4 
{
margin-left:auto;           margin-right:auto;     margin-bottom:0px;
position:relative;          left:0px;              top:10px;
border:2px solid #a1a1a1;   padding:10px 10px;     background:#ffffff;
border-radius:25px;         width:80%;           height:100%; 

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

.x tr:hover{background-color:#eeeeee; }
tr {text-align:center;}

        </style>
<%
////overflow:auto;--
%> 
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

    <p>
        

			  
			  <center>
              <asp:TextBox ID="TextBox1" runat="server" placeholder="Title" Width="299"></asp:TextBox> 
              <asp:TextBox ID="TextBox2" runat="server" placeholder="Username" Width="299px"></asp:TextBox> 
              <hr />
              <asp:TextBox ID="TextBox4" runat="server" placeholder="lat" Width="299px"></asp:TextBox> 
              <asp:TextBox ID="TextBox5" runat="server" placeholder="lon" Width="299px"></asp:TextBox> 
              <hr />
                    <a href=MapgoogleLoc.html>View Map to Find Location</a>
              <hr />
                  <asp:DropDownList ID="DropDownList2" runat="server" Width="299px">
                      <asp:ListItem>City1</asp:ListItem>
                      <asp:ListItem>City2</asp:ListItem>
                      <asp:ListItem>City3</asp:ListItem>
                  </asp:DropDownList>
            <%--  <hr />
              <asp:TextBox ID="TextBox9" runat="server" placeholder="Latitude" Width="299px"></asp:TextBox> 
              <asp:TextBox ID="TextBox10" runat="server" placeholder="Longitude" Width="299px"></asp:TextBox> --%>

                  <%--<asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">View Map for Select Location</asp:LinkButton>--%>
               <hr />
                  <asp:Button ID="Button3" runat="server" Text="Add New Center" 
                      onclick="Button3_Click" />
                 
                 
			&nbsp;</center>
			




    <center>
         <br /><hr />
       <asp:TextBox ID="TextBox3" runat="server" placeholder="name/city" 
             Width="214px"></asp:TextBox>
             
             
             </asp:TextBox>
         <asp:Button ID="Button1"
            runat="server" Text="Search" onclick="Button1_Click1" />
         <hr />
         <br />
        <asp:GridView ID="GridView1" runat="server" BackColor="White" class="x"
            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            Width="100%" EmptyDataText="No Result Found" AllowPaging="True" 
             AutoGenerateColumns="False" PageSize="3" onrowcommand="GridView1_RowCommand" 
             AllowSorting="True" DataKeyNames="id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="id" Visible="False" />
                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                <asp:BoundField DataField="note" HeaderText="note" SortExpression="note" />
            </Columns>
            <EmptyDataRowStyle BackColor="#9999FF" BorderColor="Black" BorderWidth="1px" />
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#337BA0" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#5C2931" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>


         <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
             ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
             DeleteCommand="DELETE FROM [CenterTable] WHERE [id] = @id" 
             InsertCommand="INSERT INTO [CenterTable] ([title], [city], [note]) VALUES (@title, @city, @note)" 
             SelectCommand="SELECT [id], [title], [username],[city], [note] FROM [CenterTable] WHERE (([title] LIKE '%' + @title + '%') or ([city] LIKE '%' + @city + '%'))" 
             UpdateCommand="UPDATE [CenterTable] SET [title] = @title, [city] = @city, [note] = @note WHERE [id] = @id">
             <DeleteParameters>
                 <asp:Parameter Name="id" Type="Int32" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="title" Type="String" />
                 <asp:Parameter Name="city" Type="String" />
                 <asp:Parameter Name="note" Type="String" />
             </InsertParameters>
             <SelectParameters>
                 <asp:ControlParameter ControlID="TextBox3" DefaultValue="%" Name="title" 
                     PropertyName="Text" Type="String" />
                 <asp:ControlParameter ControlID="TextBox3" DefaultValue="%" Name="city" 
                     PropertyName="Text" Type="String" />
             </SelectParameters>
             <UpdateParameters>
                 <asp:Parameter Name="title" Type="String" />
                 <asp:Parameter Name="city" Type="String" />
                 <asp:Parameter Name="note" Type="String" />
                 <asp:Parameter Name="id" Type="Int32" />
             </UpdateParameters>
         </asp:SqlDataSource>


        <br />
       
         <hr />
        
        <hr>


        </center>
    </p>
</asp:Content>
