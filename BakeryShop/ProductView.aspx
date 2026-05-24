<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="ProductView.aspx.cs" Inherits="ProductView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<style>
.navbar {
position: relative; 
margin-bottom: 0px; 
border: 1px solid transparent;
}            
img {
width:100%;
} 
</style>
<br />
<br />
<br /><br /><br />
<div class="container">
<button id="btnCart2" runat="server" class="btn btn-primary navbar-btn pull-right" onserverclick="btnCart2_ServerClick" type="button">
Cart <span id="CartBadge" runat="server" class="badge">0</span>
</button>
<br />
<div>
<!--- Success Alert --->
<div id="divSuccess" runat="server" class="alert alert-success alert-dismissible fade in h4">
<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
<strong>Success! </strong>Item successfully added to cart. <a href="Cart.aspx">View Cart</a>
</div>

<div class="col-md-5">
<div style="max-width:600px" class="thumbnail">
<%--   for proImage slider--%>
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
<!-- Indicators -->
<ol class="carousel-indicators">
<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
<li data-target="#carousel-example-generic" data-slide-to="1"></li>
<li data-target="#carousel-example-generic" data-slide-to="2"></li>
    

</ol>

<!-- Wrapper for slides -->
<div class="carousel-inner" role="listbox">

<asp:repeater ID="rptrImage" runat="server">
<ItemTemplate>
<div class="item <%# GetActiveImgClass(Container.ItemIndex) %>">
<img src="Images/ProductImages/<%# Eval("PID") %>/<%# Eval("Name") %><%# Eval("Extention") %>" alt="<%# Eval("Name") %>" onerror="this.src='Images/ImageNotAvailable.jpg'">
      
</div>
</ItemTemplate>
</asp:repeater>


</div>

<!-- Controls -->
<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
<span class="sr-only">Previous</span>
</a>
<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
<span class="sr-only">Next</span>
</a>
</div>

<%--  for proimage slider ending--%>
</div>
</div>
<div class="col-md-5">
<asp:Repeater ID="rptrProductDetails" runat="server" OnItemDataBound="rptrProductDetails_ItemDataBound">
<ItemTemplate>
<div class="divDet1">
<h1 class="proNameView"><%# Eval("PName") %> </h1>
<span class="proOgPriceView">Rs.<%#Eval("PPrice","{0:c}") %></span> <span class="proPriceDiscountView"> Off Rs.<%# string.Format("{0}",Convert.ToInt64(Eval("PPrice"))-Convert.ToInt64(Eval("PSelPrice"))) %></span><p class="proPriceView">Rs. <%#Eval("PSelPrice","{0:c}") %></p>
</div>
<div >
<h5 class="h5size"> SIZE</h5>
<div>
<asp:radiobuttonlist ID="rblSize" runat="server" RepeatDirection="Horizontal" >
<asp:ListItem Value="1KG" Text="1KG"></asp:ListItem>
<asp:ListItem Value="2KG" Text="2KG"></asp:ListItem>
<asp:ListItem Value="3KG" Text="3KG"></asp:ListItem>                      
</asp:radiobuttonlist>
</div>
</div>
<div class="divDet1">
<asp:button ID="btnAddtoCart" CssClass="mainButton" runat="server" text="ADD TO CART" Onclick="btnAddtoCart_Click" Style="background:#337ab7;  color: #fff;"/>
<asp:Label ID="lblError" CssClass ="text-danger " runat="server" ></asp:Label>               
</div>
<div class="divDet1">
<h5 class="h5size"> Description</h5>
<p>   <%#Eval("PDescription") %>          </p>                
</div>            
<asp:HiddenField ID="hfCatID" runat="server" Value='<%# Eval("PcategoryID") %>' />
</ItemTemplate>
</asp:Repeater>
</div>
</div>
</div>
<br />
<br />
<br />
<br />
</asp:Content>

