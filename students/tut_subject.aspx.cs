using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class student_tut_subject : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            GetData();
        }

    }

    private void GetData()
    {
        con.ConnectionString = ConfigurationManager.ConnectionStrings["virtualclass"].ToString();
        con.Open ();
        SqlCommand cmd=new SqlCommand ();
        cmd.Parameters .AddWithValue ("@ban_id",Session["BranchId"].ToString ());
        cmd.Parameters .AddWithValue ("@yr_id",Session["YearId"].ToString ());
        cmd .CommandText ="select * from subject where BranchId=@ban_id and YearId=@yr_id";
        cmd.Connection = con;
        DataSet ds = new DataSet();
        SqlDataAdapter da=new SqlDataAdapter (cmd);
        da.Fill(ds, "subject");

        GridView1.DataSource = ds;
       
        GridView1.DataBind();
        

    }
    
}