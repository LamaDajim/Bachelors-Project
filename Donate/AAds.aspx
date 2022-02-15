<%@ Page Title="About Us" Language="C#" MasterPageFile="~/AdminSite.master" AutoEventWireup="true"
    CodeFile="AAds.aspx.cs" Inherits="About" %>

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
        

			  <center>
              <asp:TextBox ID="TextBox2" runat="server" placeholder="Title" Width="359px"></asp:TextBox> 
              <hr /> 
              <asp:TextBox ID="TextBox3" runat="server" placeholder="Details" Height="67px" 
                      TextMode="MultiLine" Width="604px"></asp:TextBox> 
                  <hr>
                
                  <asp:Button ID="Button3" runat="server" Text="Add New Ads" 
                      onclick="Button3_Click" />
                 
                 
			</center>
			




    <center>
         
         <br />
        <asp:GridView ID="GridView1" runat="server" BackColor="White" class="x"
            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            Width="100%" EmptyDataText="No Result Found" AllowPaging="True" 
             AutoGenerateColumns="False" PageSize="6" DataKeyNames="id" 
             DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="id" Visible="False" />
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                <asp:BoundField DataField="info" HeaderText="info" SortExpression="info" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            </Columns>
            <EmptyDataRowStyle BackColor="#9999FF" BorderColor="Black" BorderWidth="1px" />
            <FooterStyle BackColor="White" ForeColor="#000000" />
            <HeaderStyle BackColor="#02BC7C" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000000" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000000" />
            <SelectedRowStyle BackColor="#B08D23" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>



       
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
             ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
             DeleteCommand="DELETE FROM [adsTable] WHERE [id] = @id" 
             InsertCommand="INSERT INTO [adsTable] ([title], [info], [date]) VALUES (@title, @info, @date)" 
             SelectCommand="SELECT * FROM [adsTable] ORDER BY [id] DESC" 
             UpdateCommand="UPDATE [adsTable] SET [title] = @title, [info] = @info, [date] = @date WHERE [id] = @id">
             <DeleteParameters>
                 <asp:Parameter Name="id" Type="Int32" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="title" Type="String" />
                 <asp:Parameter Name="info" Type="String" />
                 <asp:Parameter Name="date" Type="String" />
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter Name="title" Type="String" />
                 <asp:Parameter Name="info" Type="String" />
                 <asp:Parameter Name="date" Type="String" />
                 <asp:Parameter Name="id" Type="Int32" />
             </UpdateParameters>
         </asp:SqlDataSource>



       
        </center>
    </p>
</asp:Content>
