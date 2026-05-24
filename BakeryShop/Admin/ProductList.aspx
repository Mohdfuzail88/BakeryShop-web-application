<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Adminmasterpage.master" AutoEventWireup="true" CodeFile="ProductList.aspx.cs" Inherits="Admin_ProductList" %>

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
    <div class="container" style="padding-top: 20px; padding-left: 50px; padding-right:50px;" >
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
      
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowDataBound="GridView1_RowDataBound" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnPageIndexChanging="GridView1_PageIndexChanging"
             CellPadding="4" DataKeyNames="PID"  ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="PID" HeaderText="PID" InsertVisible="False" ReadOnly="True" SortExpression="PID" /> 
                <asp:BoundField DataField="PName" HeaderText="PName" SortExpression="PName" />
                <asp:BoundField DataField="PPrice" HeaderText="PPrice" SortExpression="PPrice" />
                <asp:BoundField DataField="PSelPrice" HeaderText="PSelPrice" SortExpression="PSelPrice" />
                <asp:BoundField DataField="PCategoryID" HeaderText="PCategoryID" SortExpression="PCategoryID" />
               
                
                <asp:BoundField DataField="PDescription" HeaderText="PDescription" SortExpression="PDescription" />
               
                <asp:TemplateField ItemStyle-Height="50px" ItemStyle-Width="100px" HeaderText="Action">
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton1" runat="server" src="../Images/del.jfif" Height="20px" Width="20px"
                            AlternateText="Delete" CommandName="DEL" CommandArgument='<%# Eval("PID")  %>' />
                        <asp:ImageButton ID="ImageButton2" runat="server" src="../Images/download.jfif" Height="20px" Width="20px"
                            AlternateText="Download" CommandName="DOWN" CommandArgument='<%# Eval("PID")  %>' />
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
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Database.mdf %>" SelectCommand="SELECT [PID], [PName], [PPrice], [PSelPrice], [PCategoryID], [PDescription] FROM [tblProducts]"></asp:SqlDataSource>
          </div>
</asp:Content>

