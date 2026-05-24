<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Adminmasterpage.master" AutoEventWireup="true" CodeFile="UserList.aspx.cs" Inherits="Admin_UserList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <style>
      td {
    display: table-cell;
    vertical-align: inherit;
    text-align:left;
    font-size:1.5rem;
}
      style attribute {
    color: #333333;
    width: 100%;
    border-collapse: collapse;
    font-size:1.5rem;
}
      th {
    display: table-cell;
    vertical-align: inherit;
    font-weight: bold;
    text-align: -internal-center;
    text-align:left;
     font-size:1.5rem;
}
      table, th, td{
border:1px solid Black;
border-collapse: collapse;
}
        </style>
    <div class="container" style="margin-top:100px; padding-left: 50px; padding-right:50px;">
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Uid"  ForeColor="#333333" GridLines="None" Width="100%" OnRowDataBound="GridView1_RowDataBound" OnRowCommand="GridView1_RowCommand">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Uid" HeaderText="Uid" InsertVisible="False" ReadOnly="True" SortExpression="Uid" />
                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="FirstName" />
                      <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Usertype" HeaderText="Usertype" SortExpression="Usertype" />
                <asp:TemplateField ItemStyle-Height="50px" ItemStyle-Width="100px" HeaderText="Action">
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton1" runat="server" src="../Images/del.jfif"  Height="20px" Width="20px"
                            AlternateText="Delete" CommandName="DEL" CommandArgument='<%# Eval("Uid")  %>' />
                    </ItemTemplate>
                   
                    <ItemStyle Height="50px" Width="50px"></ItemStyle>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Database.mdf %>" SelectCommand="SELECT [UID], [Username], [Email], [Usertype] FROM [tblUsers]"></asp:SqlDataSource>
        </div>

</asp:Content>

