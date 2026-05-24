using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class Admin_ProductList : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Database.mdf"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    if (!IsPostBack)
        {
            FillGrid();
        }
    if (!IsPostBack)
    {
        if (Session["AdminName"] != null && Session["AdminPass"] != null)
        {
            
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

    public void FillGrid()
    {
        using (SqlDataAdapter sd = new SqlDataAdapter("select * from tblProducts ORDER BY PID DESC", con))
        {
            DataTable dt = new DataTable(); 
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
    }


    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            //DataRowView dr = (DataRowView)e.Row.DataItem;
            //string imageUrl = "data:image/jpg; base64," + Convert.ToBase64String((byte[])dr["ProductImage"]);
            //(e.Row.FindControl("Img1") as Image).ImageUrl = imageUrl;
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int ID = Convert.ToInt32(e.CommandArgument.ToString());
        try
        {
            if (e.CommandName == "DEL")
            {
                using (SqlCommand cmd = new SqlCommand("DELETE FROM tblProducts where PID = @ID", con))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@ID", ID); 
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    FillGrid();
                    Label1.Text = "data deleted";
                }
            }
            else if (e.CommandName == "DOWN")
            {
                Label1.Text = "data downloaded";
            }
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        FillGrid();
    }
}




    
