<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        .row {
    padding-right: 15px;
    padding-left: 30px;
    margin-right: auto;
    margin-left: auto;
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
    padding-left: 25px;
        }
        .col-md-3{
        position: relative;
    min-height: 1px;
    padding-right: 15px;
    padding-left:25px; 
}
        .col-md-12 {
            padding-left: 0px;
        }
        .thumbnail {
                width: 250px;
    display: block;
    padding: 0px;
    margin-bottom: 20px;
    line-height: 1.42857143;
    background-color: #fff;
    border: 1px solid #ddd;
    border-radius: 4px;
    
}
        .h3, h3 {
    font-size: 20px;
}
       .navbar-btn {
    margin-top: 0px;
    margin-bottom: 8px;
}
    </style>

   
    
     <br />
    <br />
    <br />
    <div class="row">
      <div class="col-md-12">
          <button id="btnCart2" runat="server" class="btn btn-primary navbar-btn pull-right"  type="button">
                        Cart <span id="CartBadge" runat="server" class="badge"> 0 </span>
                    </button>
                    <h3>
                        <asp:Label ID="Label1" runat="server" Text="Showing All Products"></asp:Label>
                    </h3>
                    <hr />
                    
      </div>
    </div>
   <div class="row" style="padding-top:50px">
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
    
      <hr />
        
         
       <asp:repeater ID="rptrProducts" runat="server">
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
</asp:Content>

