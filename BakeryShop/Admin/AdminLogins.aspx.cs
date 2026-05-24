using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AdminLogins : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (txtUsername.Text.Length > 0 && txtUsername.Text == "Bakery" && txtPass.Text.Length > 0 && txtPass.Text == "@Bakery@")
        {
            Session["AdminName"] = txtUsername.Text;
            Session["AdminPass"] = txtPass.Text;
            Response.Redirect("AdminHome.aspx");
        }
       
        else
                    {
                        Response.Redirect("http://localhost:49673/Admin/AdminHome.aspx");
                    }
    }
}