<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Adminmasterpage.master" AutoEventWireup="true" CodeFile="OrderList.aspx.cs" Inherits="Admin_OrderList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
         table,
      element.style {
          color: #333333;
          border-collapse: collapse;
          width: 100%;
      }
    th {
    display: table-cell;
    vertical-align: inherit;
    font-weight: bold;
    text-align: left;
    font-size:1.5rem;
}
    td {
    display: table-cell;
    vertical-align: inherit;
     font-size:1.5rem;
}
style attribute {
    background-color: White;
    border-color: #3366CC;
    border-width: 1px;
    border-style: None;
    width: 100%;
    border-collapse: collapse;
}
table, th, td{
border:1px solid Black;
border-collapse: collapse;
}
    </style>
    <br />
    <br />
    <br />
    <br />
    <div class="container" style="padding-top: 20px; padding-left: 50px; padding-right:50px;">
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="OrderID"  ForeColor="#333333" GridLines="None" OnRowCommand="GridView1_RowCommand">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
                <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
                <asp:BoundField DataField="EMail" HeaderText="EMail" SortExpression="EMail" />
                <asp:BoundField DataField="CartAmount" HeaderText="CartAmount" SortExpression="CartAmount" />
                <asp:BoundField DataField="CartDiscount" HeaderText="CartDiscount" SortExpression="CartDiscount" />
                <asp:BoundField DataField="TotalPaid" HeaderText="TotalPaid" SortExpression="TotalPaid" />
                <asp:BoundField DataField="PaymentType" HeaderText="PaymentType" SortExpression="PaymentType" />
                <asp:BoundField DataField="PaymentStatus" HeaderText="PaymentStatus" SortExpression="PaymentStatus" />
                <asp:BoundField DataField="DateOfPurchase" HeaderText="DateOfPurchase" SortExpression="DateOfPurchase" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="MobileNumber" HeaderText="MobileNumber" SortExpression="MobileNumber" />
                <asp:BoundField DataField="OrderStatus" HeaderText="OrderStatus" SortExpression="OrderStatus" />
                <asp:BoundField DataField="OrderNumber" HeaderText="OrderNumber" SortExpression="OrderNumber" />
                <asp:TemplateField ItemStyle-Height="50px" ItemStyle-Width="100px" HeaderText="Action">
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton1" runat="server" src="../Images/del.jfif" Height="20px" Width="20px"
                            AlternateText="Delete" CommandName="DEL" CommandArgument='<%# Eval("OrderID")  %>' />
                        
                    </ItemTemplate>

                    <ItemStyle Height="50px" Width="50px"></ItemStyle>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Database.mdf %>" SelectCommand="SELECT [OrderID], [UserID], [EMail], [CartAmount], [CartDiscount], [TotalPaid], [PaymentType], [PaymentStatus], [DateOfPurchase], [Name], [Address], [MobileNumber], [OrderStatus], [OrderNumber] FROM [tblOrders]"></asp:SqlDataSource>

</asp:Content>

