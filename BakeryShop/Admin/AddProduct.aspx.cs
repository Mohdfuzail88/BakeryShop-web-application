using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class Admin_AddProduct : System.Web.UI.Page
{
    public static String CS = ConfigurationManager.ConnectionStrings["Database.mdf"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            
            BindCategory();

          
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
    private void BindCategory()
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from tblCategory", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                ddlCategory.DataSource = dt;
                ddlCategory.DataTextField = "CatName";
                ddlCategory.DataValueField = "CatID";
                ddlCategory.DataBind();
                ddlCategory.Items.Insert(0, new ListItem("-Select-", "0"));

            }
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("sp_InsertProduct", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@PName", txtProductName.Text);
            cmd.Parameters.AddWithValue("@PPrice", txtPrice.Text);
            cmd.Parameters.AddWithValue("@PSelPrice", txtsellPrice.Text);

            cmd.Parameters.AddWithValue("@PCategoryID", ddlCategory.SelectedItem.Value);

            cmd.Parameters.AddWithValue("@PDescription", txtDescription.Text);

            
            if (con.State == ConnectionState.Closed) { con.Open(); }
            Int64 PID = Convert.ToInt64(cmd.ExecuteScalar());



            //Insert and upload images
            if (fuImg01.HasFile)
            {
                string SavePath = Server.MapPath("~/Images/ProductImages/") + PID;
                if (!Directory.Exists(SavePath))
                {
                    Directory.CreateDirectory(SavePath);
                }
                string Extention = Path.GetExtension(fuImg01.PostedFile.FileName);
                fuImg01.SaveAs(SavePath + "\\" + txtProductName.Text.ToString().Trim() + "01" + Extention);

                //SqlCommand cmd3 = new SqlCommand("insert into tblProductImages values('" + PID + "','" + txtProductName.Text.ToString ().Trim () + "01" + "','" + Extention  + "')", con);
                SqlCommand cmd3 = new SqlCommand("insert into tblProductImages(PID,Name,Extention) values(@PID,@Name,@Extention)", con);
                cmd3.Parameters.AddWithValue("@PID", Convert.ToInt32(PID));
                cmd3.Parameters.AddWithValue("@Name", txtProductName.Text.ToString().Trim() + "01");
                cmd3.Parameters.AddWithValue("@Extention", Extention);
                cmd3.ExecuteNonQuery();
            }
            //2nd fileupload
            if (fuImg02.HasFile)
            {
                string SavePath = Server.MapPath("~/Images/ProductImages/") + PID;
                if (!Directory.Exists(SavePath))
                {
                    Directory.CreateDirectory(SavePath);

                }
                string Extention = Path.GetExtension(fuImg02.PostedFile.FileName);
                fuImg02.SaveAs(SavePath + "\\" + txtProductName.Text.ToString().Trim() + "02" + Extention);

                //SqlCommand cmd4 = new SqlCommand("insert into tblProductImages values('" + PID + "','" + txtProductName.Text.ToString().Trim() + "02" + "','" + Extention + "')", con);
                SqlCommand cmd4 = new SqlCommand("insert into tblProductImages(PID,Name,Extention) values(@PID,@Name,@Extention)", con);
                cmd4.Parameters.AddWithValue("@PID", Convert.ToInt32(PID));
                cmd4.Parameters.AddWithValue("@Name", txtProductName.Text.ToString().Trim() + "02");
                cmd4.Parameters.AddWithValue("@Extention", Extention);
                cmd4.ExecuteNonQuery();
            }



        }
    }
    protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        int CategoryID = Convert.ToInt32(ddlCategory.SelectedItem.Value);

        using (SqlConnection con = new SqlConnection(CS))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from tblCategory where CatID='" + ddlCategory.SelectedItem.Value + "'", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {


            }
        }
    }
   

}
