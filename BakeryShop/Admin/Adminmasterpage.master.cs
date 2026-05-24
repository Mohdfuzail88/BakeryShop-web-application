using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Adminmasterpage : System.Web.UI.MasterPage
{
protected void Page_Load(object sender, EventArgs e)
{

if (!IsPostBack)
{

if (Session["AdminName"] != null)
{
Login.Visible = false;
LogOut.Visible = true;
                
}
else
{
Login.Visible = true;
LogOut.Visible = false;
                
}


}
}
 

protected void Login_Click(object sender, EventArgs e)
{
Response.Redirect("http://localhost:49673/Admin/AdminLogins.aspx");
}
protected void LogOut_Click(object sender, EventArgs e)
{
Session.Clear();
Response.Redirect("http://localhost:49673/Admin/AdminLogins.aspx");
}
}
