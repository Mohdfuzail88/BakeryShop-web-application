using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AdminHome : System.Web.UI.Page
{
protected void Page_Load(object sender, EventArgs e)
{
if (!IsPostBack)
{
if (Session["AdminName"] != null && Session["AdminPass"] != null)
{
lblmsg.Text = Session["AdminName"].ToString();
}
else
{
Session.Clear();
Response.Redirect("http://localhost:49673/Admin/AdminLogins.aspx");
           
            
        
if (Request.QueryString["Login"] == "YES")
{
Response.Redirect("http://localhost:49673/Admin/AdminLogins.aspx");
}
else
{
Response.Redirect("~/Default.aspx");
}
}
}
}
}
