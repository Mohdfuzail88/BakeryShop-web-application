<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<style>
.category1 {
color: black;
font-weight: bold;
text-align: center;
margin-top: 30px;
font-family: Calibri;
}
.category2 {
color: black;
font-weight: bold;
text-align: center;
margin-top: 30px;
font-family: Calibri;
}
.category3 {
color: black;
font-weight: bold;
text-align: center;
margin-top: 30px;
font-family: Calibri;
}
.category4   {
color: black;
font-weight: bold;
text-align: center;
margin-top: 30px;
font-family: Calibri;
}
.category5  {
color: black;
font-weight: bold;
text-align: center;
margin-top: 30px;
font-family: Calibri;
}
.category6 {
color: black;
font-weight: bold;
text-align: center;
margin-top: 30px;
font-family: Calibri;
}
.category7  {
color: black;
font-weight: bold;
text-align: center;
margin-top: 30px;
font-family: Calibri;
}
.category8   {
color: black;
font-weight: bold;
text-align: center;
margin-top: 30px;
font-family: Calibri;
}
.category9   {
color: black;
font-weight: bold;
text-align: center;
margin-top: 30px;
font-family: Calibri;
}
.category10  {
color: black;
font-weight: bold;
text-align: center;
margin-top: 30px;
font-family: Calibri;
}
.header h3{
font-size:4rem;
}
.navbar {
position: relative;
margin-bottom: -09px;
border: 1px solid transparent;
}
.header .navbar.nav-1 .flex {
padding-top: 0.1px;
padding-bottom: 0.1px;
}
.col-sm-3 {
position: relative;
min-height: 1px;
padding-right: 15px;
padding-left: 37px;
}
.col-md-3 {
position: relative;
min-height: 1px;
padding-right: 15px;
padding-left: 37px;
}
</style>

<!-- header section ends -->
<section class="home">

<div class="slides-container">

<div class="slide active">
<div class="content">
<span>Mocha Gateau</span>
<h3>upto 50% off</h3>
<a href="Cakes.aspx" class="btn" style="background:#337ab7;  color: #fff;">shop now</a>
</div>
<div class="image">
<img src="Content/mocha%20gateau.jpg"  alt="" class="center" />
</div>
</div>

<div class="slide">
<div class="content">
<span>Truffle Exotique Pastry</span>
<h3>upto 50% off</h3>
<a href="Pastries.aspx" class="btn" style="background:#337ab7;  color: #fff;">shop now</a>
</div>
<div class="image">
<img src="Content/Belgian%20Evasion%20Pastry.jpg" alt=""/>
</div>
</div>

<div class="slide">
<div class="content">
<span>Blueberry Muffin</span>
<h3>upto 50% off</h3>
<a href="#" class="btn" style="background:#337ab7;  color: #fff;">shop now</a>
</div>
<div class="image">
<img src="Content/Blueberry%20Muffin.jpg" alt=""/>
</div>
</div>

</div>

<div id="next-slide" class="fas fa-angle-right" onclick="next()">

</div>
<div id="prev-slide" class="fas fa-angle-left" onclick="next()"></div>

</section>


<br />
<br />
<br />
<br />       
<div class ="container" style="text-align:center;margin:auto; padding-bottom: 3rem;">
<ul style="list-style:none;margin:auto">
<li>  <asp:TextBox ID="Txtsearch" runat="server"  Style="border-style:double; height:2.5rem; width:30%; "
placeholder="Search Anything!"></asp:TextBox> 
<asp:Button ID="Button1" runat="server" Text="SEARCH"  OnClick="Button1_Click" CssClass="btn btn-success" Style="background:#337ab7;  color: #fff;"/>
<asp:Button ID="Button2" runat="server" Text="CLEAR" Onclick="Button2_Click" Style="background:#337ab7;  color: #fff;"
CssClass="btn btn-success"/>
<asp:Label ID="lblmsg" runat="server" Text=""></asp:Label> </li>
</ul>
</div>
<div class="container">
<div class="row">                    
<asp:repeater ID="rptrsearch" runat="server" >
<ItemTemplate>
<div class="col-sm-3 col-md-3">
<a href="ProductView.aspx?PID=<%# Eval("PID") %>" style="text-decoration:none;">
<div class="thumbnail">              
<img src="Images/ProductImages/<%# Eval("PID") %>/<%# Eval("ImageName") %><%# Eval("Extention") %>" alt="<%# Eval("ImageName") %>"/>
<div class="caption">                    
<div class="proName"> <%# Eval ("PName") %> </div>
<div class="proPrice"> <span class="proOgPrice" > <%# Eval ("PPrice","{0:0,00}") %> </span> <%# Eval ("PSelPrice","{0:c}") %> <span class="proPriceDiscount"> (<%# Eval("DiscAmount","{0:0,00}") %> off) </span></div>                   
</div>
</div>
</a>
</div>              
</ItemTemplate>
</asp:repeater>                                                  
</div>
</div>             
<div class="category1"> 
<div class="jumbotron">
<asp:Label ID="lblSuccess" runat="server" CssClass ="text-success "></asp:Label>
</div>
<h1 style = "font-family: 'Edu QLD Beginner', cursive;font-family: 'Pacifico', cursive;"  >ChristmasCake</h1>
<div class="jumbotron">
<div class="container">
<div class="row">       
<asp:repeater ID="rptrProducts1" runat="server">
<ItemTemplate>
<div class="col-sm-3 col-md-3">
<a href="ProductView.aspx?PID=<%# Eval("PID") %>" style="text-decoration:none;">          
<div class="thumbnail">     
<img src="Images/ProductImages/<%# Eval("PID") %>/<%# Eval("ImageName") %><%# Eval("Extention") %>" alt="<%# Eval("ImageName") %>"/>
<div class="caption">                   
<div class="proName"> <%# Eval ("PName") %> </div>
<div class="proPrice"> <span class="proOgPrice" > <%# Eval ("PPrice","{0:0,00}") %> </span> <%# Eval ("PSelPrice","{0:c}") %> <span class="proPriceDiscount"> (<%# Eval("DiscAmount","{0:0,00}") %>off) </span></div>                    
</div>
</div>
</a>
</div>              
</ItemTemplate>
</asp:repeater>
</div>
</div>
</div>
</div>
<div class="category2">
<h1 style = "font-family: 'Edu QLD Beginner', cursive;font-family: 'Pacifico', cursive;">Breads</h1>
<div class="jumbotron">
<div class="container">
<div class="row">      
<asp:repeater ID="rptrProducts2" runat="server">
<ItemTemplate>
<div class="col-sm-3 col-md-3">
<a href="ProductView.aspx?PID=<%# Eval("PID") %>" style="text-decoration:none;">          
<div class="thumbnail">     
<img src="Images/ProductImages/<%# Eval("PID") %>/<%# Eval("ImageName") %><%# Eval("Extention") %>" alt="<%# Eval("ImageName") %>"/>
<div class="caption">                  
<div class="proName"> <%# Eval ("PName") %> </div>
<div class="proPrice"> <span class="proOgPrice" > <%# Eval ("PPrice","{0:0,00}") %> </span> <%# Eval ("PSelPrice","{0:c}") %> <span class="proPriceDiscount"> (<%# Eval("DiscAmount","{0:0,00}") %>off) </span></div>                   
</div>
</div>
</a>
</div>              
</ItemTemplate>
</asp:repeater>
</div>
</div>
</div>
</div>
<div class="category3">    
<h1 style = "font-family: 'Edu QLD Beginner', cursive;font-family: 'Pacifico', cursive;"  >Cakes</h1>
<div class="jumbotron">
<div class="container">
<div class="row">      
<asp:repeater ID="rptrProducts3" runat="server">
<ItemTemplate>
<div class="col-sm-3 col-md-3">
<a href="ProductView.aspx?PID=<%# Eval("PID") %>" style="text-decoration:none;">         
<div class="thumbnail">     
<img src="Images/ProductImages/<%# Eval("PID") %>/<%# Eval("ImageName") %><%# Eval("Extention") %>" alt="<%# Eval("ImageName") %>"/>
<div class="caption">                   
<div class="proName"> <%# Eval ("PName") %> </div>
<div class="proPrice"> <span class="proOgPrice" > <%# Eval ("PPrice","{0:0,00}") %> </span> <%# Eval ("PSelPrice","{0:c}") %> <span class="proPriceDiscount"> (<%# Eval("DiscAmount","{0:0,00}") %>off) </span></div>                    
</div>
</div>
</a>
</div>             
</ItemTemplate>
</asp:repeater>
</div>
</div>
</div>
</div>
<div class="category4">   
<h1 style = "font-family: 'Edu QLD Beginner', cursive;font-family: 'Pacifico', cursive;"  >Pastries</h1>
<div class="jumbotron">
<div class="container">
<div class="row">      
<asp:repeater ID="rptrProducts4" runat="server">
<ItemTemplate>
<div class="col-sm-3 col-md-3">
<a href="ProductView.aspx?PID=<%# Eval("PID") %>" style="text-decoration:none;">
<div class="thumbnail">              
<img src="Images/ProductImages/<%# Eval("PID") %>/<%# Eval("ImageName") %><%# Eval("Extention") %>" alt="<%# Eval("ImageName") %>"/>
<div class="caption">                    
<div class="proName"> <%# Eval ("PName") %> </div>
<div class="proPrice"> <span class="proOgPrice" > <%# Eval ("PPrice","{0:0,00}") %> </span> <%# Eval ("PSelPrice","{0:c}") %> <span class="proPriceDiscount"> (<%# Eval("DiscAmount","{0:0,00}") %>off) </span></div>                    
</div>
</div>
</a>
</div>              
</ItemTemplate>
</asp:repeater>
</div>
</div>
</div>
</div>
<div class="category5">    
<h1 style = "font-family: 'Edu QLD Beginner', cursive;font-family: 'Pacifico', cursive;"  >Breakfast Buns & Rolls</h1>
<div class="jumbotron">
<div class="container">
<div class="row">      
<asp:repeater ID="rptrProducts5" runat="server">
<ItemTemplate>
<div class="col-sm-3 col-md-3">
<a href="ProductView.aspx?PID=<%# Eval("PID") %>" style="text-decoration:none;">         
<div class="thumbnail">     
<img src="Images/ProductImages/<%# Eval("PID") %>/<%# Eval("ImageName") %><%# Eval("Extention") %>" alt="<%# Eval("ImageName") %>"/>
<div class="caption">                  
<div class="proName"> <%# Eval ("PName") %> </div>
<div class="proPrice"> <span class="proOgPrice" > <%# Eval ("PPrice","{0:0,00}") %> </span> <%# Eval ("PSelPrice","{0:c}") %> <span class="proPriceDiscount"> (<%# Eval("DiscAmount","{0:0,00}") %>off) </span></div> 
                   
</div>
</div>
</a>
</div>
               
</ItemTemplate>
</asp:repeater>
</div>
</div>
</div>
</div>
<div class="category6"> 
    
<h1 style = "font-family: 'Edu QLD Beginner', cursive;font-family: 'Pacifico', cursive;"  >Light Eats Veg</h1>

<div class="jumbotron">
<div class="container">
<div class="row">
       
<asp:repeater ID="rptrProducts6" runat="server">
<ItemTemplate>
<div class="col-sm-3 col-md-3">
<a href="ProductView.aspx?PID=<%# Eval("PID") %>" style="text-decoration:none;">
          
<div class="thumbnail">     
<img src="Images/ProductImages/<%# Eval("PID") %>/<%# Eval("ImageName") %><%# Eval("Extention") %>" alt="<%# Eval("ImageName") %>"/>
<div class="caption"> 
                  
<div class="proName"> <%# Eval ("PName") %> </div>
<div class="proPrice"> <span class="proOgPrice" > <%# Eval ("PPrice","{0:0,00}") %> </span> <%# Eval ("PSelPrice","{0:c}") %> <span class="proPriceDiscount"> (<%# Eval("DiscAmount","{0:0,00}") %>off) </span></div> 
                   
</div>
</div>
</a>
</div>
               
</ItemTemplate>
</asp:repeater>
</div>
</div>
</div>
</div>
<div class="category7"> 
    
<h1 style = "font-family: 'Edu QLD Beginner', cursive;font-family: 'Pacifico', cursive;"  >Happy Birthday Cake</h1>

<div class="jumbotron">
<div class="container">
<div class="row">
       
<asp:repeater ID="rptrProducts7" runat="server">
<ItemTemplate>
<div class="col-sm-3 col-md-3">
<a href="ProductView.aspx?PID=<%# Eval("PID") %>" style="text-decoration:none;">
          
<div class="thumbnail">     
<img src="Images/ProductImages/<%# Eval("PID") %>/<%# Eval("ImageName") %><%# Eval("Extention") %>" alt="<%# Eval("ImageName") %>"/>
<div class="caption"> 
                  
<div class="proName"> <%# Eval ("PName") %> </div>
<div class="proPrice"> <span class="proOgPrice" > <%# Eval ("PPrice","{0:0,00}") %> </span> <%# Eval ("PSelPrice","{0:c}") %> <span class="proPriceDiscount"> (<%# Eval("DiscAmount","{0:0,00}") %>off) </span></div> 
                   
</div>
</div>
</a>
</div>
               
</ItemTemplate>
</asp:repeater>
</div>
</div>
</div>
</div>
<div class="category8"> 
    
<h1 style = "font-family: 'Edu QLD Beginner', cursive;font-family: 'Pacifico', cursive;"  >Light Eats Non Veg</h1>

<div class="jumbotron">
<div class="container">
<div class="row">
       
<asp:repeater ID="rptrProducts8" runat="server">
<ItemTemplate>
<div class="col-sm-3 col-md-3">
<a href="ProductView.aspx?PID=<%# Eval("PID") %>" style="text-decoration:none;">
          
<div class="thumbnail">     
<img src="Images/ProductImages/<%# Eval("PID") %>/<%# Eval("ImageName") %><%# Eval("Extention") %>" alt="<%# Eval("ImageName") %>"/>
<div class="caption"> 
                  
<div class="proName"> <%# Eval ("PName") %> </div>
<div class="proPrice"> <span class="proOgPrice" > <%# Eval ("PPrice","{0:0,00}") %> </span> <%# Eval ("PSelPrice","{0:c}") %> <span class="proPriceDiscount"> (<%# Eval("DiscAmount","{0:0,00}") %>off) </span></div> 
                   
</div>
</div>
</a>
</div>
               
</ItemTemplate>
</asp:repeater>
</div>
</div>
</div>
</div>
<div class="category9"> 
    
<h1 style = "font-family: 'Edu QLD Beginner', cursive;font-family: 'Pacifico', cursive;"  >Dry Cakes</h1>

<div class="jumbotron">
<div class="container">
<div class="row">
       
<asp:repeater ID="rptrProducts9" runat="server">
<ItemTemplate>
<div class="col-sm-3 col-md-3">
<a href="ProductView.aspx?PID=<%# Eval("PID") %>" style="text-decoration:none;">
          
<div class="thumbnail">     
<img src="Images/ProductImages/<%# Eval("PID") %>/<%# Eval("ImageName") %><%# Eval("Extention") %>" alt="<%# Eval("ImageName") %>"/>
<div class="caption"> 
                  
<div class="proName"> <%# Eval ("PName") %> </div>
<div class="proPrice"> <span class="proOgPrice" > <%# Eval ("PPrice","{0:0,00}") %> </span> <%# Eval ("PSelPrice","{0:c}") %> <span class="proPriceDiscount"> (<%# Eval("DiscAmount","{0:0,00}") %>off) </span></div> 
                   
</div>
</div>
</a>
</div>
               
</ItemTemplate>
</asp:repeater>
</div>
</div>
</div>
</div>
<div class="category10"> 
    
<h1 style = "font-family: 'Edu QLD Beginner', cursive;font-family: 'Pacifico', cursive;"  >Brownies And Cookies</h1>

<div class="jumbotron">
<div class="container">
<div class="row">
       
<asp:repeater ID="rptrProducts10" runat="server">
<ItemTemplate>
<div class="col-sm-3 col-md-3">
<a href="ProductView.aspx?PID=<%# Eval("PID") %>" style="text-decoration:none;">
          
<div class="thumbnail">     
<img src="Images/ProductImages/<%# Eval("PID") %>/<%# Eval("ImageName") %><%# Eval("Extention") %>" alt="<%# Eval("ImageName") %>"/>
<div class="caption"> 
                  
<div class="proName"> <%# Eval ("PName") %> </div>
<div class="proPrice"> <span class="proOgPrice" > <%# Eval ("PPrice","{0:0,00}") %> </span> <%# Eval ("PSelPrice","{0:c}") %> <span class="proPriceDiscount"> (<%# Eval("DiscAmount","{0:0,00}") %>off) </span></div> 
                   
</div>
</div>
</a>
</div>
               
</ItemTemplate>
</asp:repeater>
</div>
</div>
</div>
</div> 
</asp:Content>

