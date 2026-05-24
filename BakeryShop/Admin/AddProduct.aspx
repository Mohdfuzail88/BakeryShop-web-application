<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Adminmasterpage.master" AutoEventWireup="true" CodeFile="AddProduct.aspx.cs" Inherits="Admin_AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
     .wrapper span{
         font-size: 1.5rem;
     }
     textarea.form-control {
    height: auto;
}
.form-control {
    display: block;
    width: 100%;
    height: calc(1.5em + .75rem + 2px);
    padding: .375rem .75rem;
    font-size: 1.5rem;
    font-weight: 400;
    line-height: 1.5;
    color: #495057;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid #ced4da;
    border-radius: .25rem;
    transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
}

textarea {
    overflow: auto;
    resize: vertical;
}
input[type="submit" ] {
    width:100%;
    appearance: auto;
    user-select: none;
    white-space: pre;
    align-items: flex-start;
    text-align: center;
    cursor: default;
    box-sizing: border-box;
    background-color: mediumaquamarine;
    color: buttontext;
    padding: 1px 6px;
    border-width: 2px;
    border-style: outset;
    border-color: buttonborder;
    border-image: initial;
}
 </style>
    <br />
    <br />
    <br />
    <br />


  <div class="wrapper">
    <div class="inner-warpper text-center">
      <h2 class="title">Add Product</h2>
        <br />
        <br />
        <div id="formvalidate" runat="server">
        <div class="input-group">
           <asp:Label ID="Label1" runat="server" CssClass ="col-md-2 control-label" Text="Proudct Name"></asp:Label>
              
            <asp:TextBox ID="txtProductName" runat="server" Class="form-control" placeholder="ENTER PRODUCT NAME" ></asp:TextBox>
          
        </div>
             <div class="input-group">
           <asp:Label ID="Label2" runat="server" CssClass ="col-md-2 control-label" Text="Price"></asp:Label>
            <asp:TextBox ID="txtPrice"  runat="server" Class="form-control" placeholder="Enter  Price" ></asp:TextBox>
       
          
        </div>
             <div class ="form-group" style="padding-bottom:2rem;">
               <asp:Label ID="Label3" runat="server" CssClass ="col-md-2 control-label" Text="SellingPrice"></asp:Label>
             
                   <asp:TextBox ID="txtsellPrice" CssClass ="form-control" runat="server" placeholder="Enter Selling Price"></asp:TextBox>
               
           </div>
    
          <div class="input-group">
          <asp:Label ID="Label4" runat="server" CssClass ="col-md-2 control-label" Text="Category"></asp:Label>
               <asp:DropDownList ID="ddlCategory" CssClass ="form-control" AutoPostBack ="true"  runat="server" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged"></asp:DropDownList>    
          
             
          
        </div>
        <div class="input-group">
         
          <asp:Label ID="Label5" runat="server" CssClass ="col-md-2 control-label" Text="Description"></asp:Label>
          
               <asp:TextBox ID="txtDescription" runat="server" Class="form-control" placeholder="ENTER PRODUCT DESCRIPTION" rows="2" cols="20" TextMode="MultiLine" ></asp:TextBox>
                
                       
                    
        </div>

          <div class="row" style="padding-bottom: 20px;">
                <div class="col-md-4">
                   <asp:Label ID="Label6" runat="server" CssClass ="col-md-2 control-label" Text="Upload Image"></asp:Label>
                </div>
                <div class="col-md-4">
                      <asp:FileUpload ID="fuImg01" runat="server"  />
                  
                </div>
            </div>


             <div class="row" style="padding-bottom: 20px;">
                <div class="col-md-4">
                     <asp:Label ID="Label7" runat="server" CssClass ="col-md-2 control-label" Text="Upload Image"></asp:Label>
                </div>
                <div class="col-md-4">
                      <asp:FileUpload ID="fuImg02" runat="server"  />
                  
                </div>
            </div>
           
           
          


            





       <asp:Button ID="Button1" type="submit"  runat="server"  Class="form-control" Text="Add Product" OnClick="Button1_Click"  />
       <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
       </div>
    </div>
    </div>


    
</asp:Content>

