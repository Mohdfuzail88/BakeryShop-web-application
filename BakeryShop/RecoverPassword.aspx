<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="RecoverPassword.aspx.cs" Inherits="RecoverPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        input[type="submit" ] {
    width:100%;
    appearance: auto;
    user-select: none;
    white-space: pre;
    align-items: flex-start;
    text-align: center;
    cursor: default;
  
   
    color: buttontext;
    padding: 1px 6px;
    border-width: 2px;
   
  
    border-image: initial;
}
button {
  cursor: pointer;
 
  width: 100%;
  border: 0;
  padding: 10px 15px;
  color: #fff;
  font-size: 20px;
  -webkit-transition: 0.3s linear;
  transition: 0.3s linear;
}
    </style>
    <div class="container">
            <div class ="form-horizontal">
                <br />
                <br />
                <br />

                <h2>Reset Password</h2>
                <hr />
                <h3></h3>
                <div  class ="form-group">
                   <asp:Label ID="lblmsg" CssClass ="col-md-2 control-label" runat="server"  Visible="False" Font-Bold="True" Font-Size="X-Large"></asp:Label>

                </div>


                <div class ="form-group">
                    <asp:Label ID="lblNewPassword" CssClass ="col-md-2 control-label" runat="server" Text=" New Password" Visible="False"></asp:Label>
                    <div class ="col-md-3">
                        <asp:TextBox ID="txtNewPass" CssClass =" form-control" TextMode ="Password"  runat="server" Visible="False"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorNewPass" CssClass ="Text-danger" runat="server" ErrorMessage="Enter Your New Password" ControlToValidate="txtNewPass" ForeColor="Red"></asp:RequiredFieldValidator>

                    </div>

                </div>

                
                <div class ="form-group">
                    <asp:Label ID="lblConfirmPass" CssClass ="col-md-2 control-label" runat="server" Text="Confirm New Password" Visible="False"></asp:Label>
                    <div class ="col-md-3">
                        <asp:TextBox ID="txtConfirmPass" CssClass =" form-control" TextMode ="Password"  runat="server" Visible="False"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirmPass" CssClass ="Text-danger" runat="server" ErrorMessage="Enter Your Confirm New Password" ControlToValidate="txtConfirmPass" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidatorPass" CssClass ="Text-danger" runat="server" ErrorMessage="confirm password not match...try again" ControlToCompare="txtConfirmPass" ForeColor="Red" ControlToValidate="txtNewPass"></asp:CompareValidator>
                    </div>

                </div> 


                <div class ="form-group">
                    <div class ="col-md-2">   </div>

                    <div class ="col-md-6">
                        <asp:Button ID="btnResetPass" CssClass ="btn btn-default" runat="server" Text="Reset" Visible="False" Style="background:#337ab7;  color: #fff;" OnClick="btnResetPass_Click" />
                   
                         </div>
                </div>

            </div>
        </div>
</asp:Content>

