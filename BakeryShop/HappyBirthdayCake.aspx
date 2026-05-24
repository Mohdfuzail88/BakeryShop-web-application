<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="HappyBirthdayCake.aspx.cs" Inherits="HappyBirthdayCake" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <style>
        .navbar {
    position: relative;
    min-height: 50px;
    margin-bottom: 0px; 
    border: 1px solid transparent;
}
    </style>

    <div class="container">
  <h2>Happy Birthday Cake</h2>  

    <div class="panel panel-primary">
      <div class="panel-heading">Happy Birthday Cake</div>
      <div class="panel-body">

     
      <br />
      <hr />
         
         
      

      <asp:repeater ID="rptrProducts" runat="server">
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
</asp:Content>

