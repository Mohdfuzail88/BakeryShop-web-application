using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Globalization;
using System.Threading;

public partial class Index : System.Web.UI.Page
{
public static String CS = ConfigurationManager.ConnectionStrings["Database.mdf"].ConnectionString;
protected void Page_Load(object sender, EventArgs e)
{

if (Session["Username"] != null)
{
if (!IsPostBack)
{
if (Request.QueryString["BuyNow"] == "YES")
{

}
BindProductRepeater();
BindCartNumber();
               
}
}
else
{
if (Request.QueryString["BuyNow"] == "YES")
{
Response.Redirect("L.aspx");
}
else
{
Response.Redirect("~/Default.aspx");
}
} 
if (Session["Username"] != null)
{
           
lblSuccess.Text = "Login Success, Welcome <b>" + Session["Username"].ToString() + "</b>";
           
}
else
{
           
}
}
protected void Button1_Click(object sender, EventArgs e)
{
if (Txtsearch.Text != string.Empty)
{
SqlConnection con = new SqlConnection(CS);
con.Open();
string qr = "select A.*,B.* ,A.PPrice-A.PSelPrice as DiscAmount,B.Name as ImageName  from tblProducts A  cross apply( select top 1 * from tblProductImages B where B.PID= A.PID order by B.PID desc )B where  A.PName like '" + Txtsearch.Text + "%' order by A.PID desc";
SqlDataAdapter da = new SqlDataAdapter(qr, con);
string text = ((Button)sender).Text;
DataSet ds = new DataSet();
da.Fill(ds);
if (ds.Tables[0].Rows.Count > 0)
{
rptrsearch.DataSource = ds.Tables[0];
rptrsearch.DataBind();
}
else
{
}
}
else
{
BindProductRepeater();
}
}
protected void Button2_Click(object sender, EventArgs e)
{
lblmsg.Text = "";
rptrsearch.DataSource = null;
rptrsearch.DataBind();
}
private void BindProductRepeater()
{
using (SqlConnection con = new SqlConnection(CS))
{
using (SqlCommand cmd = new SqlCommand("procBindAllProducts1 ", con))          
{
cmd.CommandType = CommandType.StoredProcedure;
using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
{
DataTable dt = new DataTable();
sda.Fill(dt);
rptrProducts1.DataSource = dt;
rptrProducts1.DataBind();
if (dt.Rows.Count <= 0)
{
// Label1.Text = "Sorry! Currently no products in this category.";
}
else
{
//Label1.Text = "Showing All Products";
}
}
}
}
using (SqlConnection con = new SqlConnection(CS))
{
using (SqlCommand cmd = new SqlCommand("procBindAllProducts2 ", con))
{
cmd.CommandType = CommandType.StoredProcedure;
using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
{
DataTable dt = new DataTable();
sda.Fill(dt);
rptrProducts2.DataSource = dt;
rptrProducts2.DataBind();
if (dt.Rows.Count <= 0)
{
// Label1.Text = "Sorry! Currently no products in this category.";
}
else
{
//Label1.Text = "Showing All Products";
}
}
}
}
using (SqlConnection con = new SqlConnection(CS))
{
using (SqlCommand cmd = new SqlCommand("procBindAllProducts3 ", con))
{
cmd.CommandType = CommandType.StoredProcedure;
using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
{
DataTable dt = new DataTable();
sda.Fill(dt);
rptrProducts3.DataSource = dt;
rptrProducts3.DataBind();
if (dt.Rows.Count <= 0)
{
// Label1.Text = "Sorry! Currently no products in this category.";
}
else
{
//Label1.Text = "Showing All Products";
}
}
}
}
using (SqlConnection con = new SqlConnection(CS))
{
using (SqlCommand cmd = new SqlCommand("procBindAllProducts4", con))
{
cmd.CommandType = CommandType.StoredProcedure;
using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
{
DataTable dt = new DataTable();
sda.Fill(dt);
rptrProducts4.DataSource = dt;
rptrProducts4.DataBind();
if (dt.Rows.Count <= 0)
{
// Label1.Text = "Sorry! Currently no products in this category.";
}
else
{
//Label1.Text = "Showing All Products";
}
}
}
}
using (SqlConnection con = new SqlConnection(CS))
{
using (SqlCommand cmd = new SqlCommand("procBindAllProducts5 ", con))
{
cmd.CommandType = CommandType.StoredProcedure;
using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
{
DataTable dt = new DataTable();
sda.Fill(dt);
rptrProducts5.DataSource = dt;
rptrProducts5.DataBind();
if (dt.Rows.Count <= 0)
{
// Label1.Text = "Sorry! Currently no products in this category.";
}
else
{
//Label1.Text = "Showing All Products";
}
}
}
}
using (SqlConnection con = new SqlConnection(CS))
{
using (SqlCommand cmd = new SqlCommand("procBindAllProducts6 ", con))
{
cmd.CommandType = CommandType.StoredProcedure;
using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
{
DataTable dt = new DataTable();
sda.Fill(dt);
rptrProducts6.DataSource = dt;
rptrProducts6.DataBind();
if (dt.Rows.Count <= 0)
{
// Label1.Text = "Sorry! Currently no products in this category.";
}
else
{
//Label1.Text = "Showing All Products";
}
}
}
}
using (SqlConnection con = new SqlConnection(CS))
{
using (SqlCommand cmd = new SqlCommand("procBindAllProducts7 ", con))
{
cmd.CommandType = CommandType.StoredProcedure;
using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
{
DataTable dt = new DataTable();
sda.Fill(dt);
rptrProducts7.DataSource = dt;
rptrProducts7.DataBind();
if (dt.Rows.Count <= 0)
{
// Label1.Text = "Sorry! Currently no products in this category.";
}
else
{
//Label1.Text = "Showing All Products";
}
}
}
}
using (SqlConnection con = new SqlConnection(CS))
{
using (SqlCommand cmd = new SqlCommand("procBindAllProducts8 ", con))
{
cmd.CommandType = CommandType.StoredProcedure;
using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
{
DataTable dt = new DataTable();
sda.Fill(dt);
rptrProducts8.DataSource = dt;
rptrProducts8.DataBind();
if (dt.Rows.Count <= 0)
{
// Label1.Text = "Sorry! Currently no products in this category.";
}
else
{
//Label1.Text = "Showing All Products";
}
}
}
}
using (SqlConnection con = new SqlConnection(CS))
{
using (SqlCommand cmd = new SqlCommand("procBindAllProducts9 ", con))
{
cmd.CommandType = CommandType.StoredProcedure;
using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
{
DataTable dt = new DataTable();
sda.Fill(dt);
rptrProducts9.DataSource = dt;
rptrProducts9.DataBind();
if (dt.Rows.Count <= 0)
{
// Label1.Text = "Sorry! Currently no products in this category.";
}
else
{
//Label1.Text = "Showing All Products";
}
}
}
}
using (SqlConnection con = new SqlConnection(CS))
{
using (SqlCommand cmd = new SqlCommand("procBindAllProducts10 ", con))
{
cmd.CommandType = CommandType.StoredProcedure;
using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
{
DataTable dt = new DataTable();
sda.Fill(dt);
rptrProducts10.DataSource = dt;
rptrProducts10.DataBind();
if (dt.Rows.Count <= 0)
{
// Label1.Text = "Sorry! Currently no products in this category.";
}
else
{
//Label1.Text = "Showing All Products";
}
}
}
}
}
protected override void InitializeCulture()
{
CultureInfo ci = new CultureInfo("en-IN");
ci.NumberFormat.CurrencySymbol = "₹";
Thread.CurrentThread.CurrentCulture = ci;

base.InitializeCulture();
}
public void BindCartNumber()
{
if (Session["USERID"] != null)
{
string UserIDD = Session["USERID"].ToString();
DataTable dt = new DataTable();
using (SqlConnection con = new SqlConnection(CS))
{
SqlCommand cmd = new SqlCommand("SP_BindCartNumberz", con)
{
CommandType = CommandType.StoredProcedure
};
cmd.Parameters.AddWithValue("@UserID", UserIDD);
using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
{
sda.Fill(dt);
if (dt.Rows.Count > 0)
{
string CartQuantity = dt.Compute("Sum(Qty)", "").ToString();
}
else
{
}
}
}
}
} 
}
    


   
    