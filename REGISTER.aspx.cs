using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class REGISTER : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            branchupdate();
            yearupdate();
        }


    }

    private void yearupdate()
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["virtualclass"].ToString();
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select * from Year";
        cmd.Connection = con;
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds, "Year");
        yr.DataSource = ds;
        yr.DataTextField = "YearName";
        yr.DataValueField = "YearId";
        yr.DataBind();
        yr.Items.Insert(0, "select Year");
        con.Close();
    }

    private void branchupdate()
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["virtualclass"].ToString();
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select * from branch";
        cmd.Connection = con;
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds, "branch");
        branch.DataSource = ds;
        branch.DataTextField = "BranchName";
        branch.DataValueField = "Branchid";
        branch.DataBind();
        branch.Items.Insert(0, "select Branch");
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        bool flag=true;
        string branch1 = branch.Text;
        string year = yr.Text;
        SqlConnection con1 = new SqlConnection();
        con1.ConnectionString = ConfigurationManager.ConnectionStrings["virtualclass"].ToString();
        con1.Open ();
        SqlCommand cmd=new SqlCommand ();
        cmd.Parameters .AddWithValue ("@email",TextBox1 .Text );
        cmd.Parameters .AddWithValue ("@password",TextBox2.Text );
        cmd.Parameters .AddWithValue ("@branch",branch .SelectedValue);
        cmd.Parameters .AddWithValue ("@year",yr .SelectedValue);
        cmd .Parameters .AddWithValue ("@payment","payment");
        cmd.CommandText ="select * from register where email=@email and password=@password and BranchId=@branch and YearId=@year and payment=@payment";
        cmd.Connection =con1 ;
        SqlDataReader rd=cmd.ExecuteReader();
        while (rd.Read ())
        {
            if (TextBox1.Text == rd["email"].ToString() && TextBox2.Text == rd["password"].ToString() && branch.Text == rd["BranchId"].ToString() && year == rd["YearId"].ToString() && rd["payment"].ToString() == "payment")
            {
                Session["email"] = rd["email"].ToString();
                Session["username"] = rd["username"].ToString();
                Session["BranchId"] = rd["BranchId"].ToString();
                Session["YearId"] = rd["YearId"].ToString();
                flag =false ;
                break;
               
               

            }}
        if (flag ==false )
         Response.Redirect("~/student/student.aspx"); 
        else
        {
            
                Label3.Text = "invalid username,password or payment is not received";
                Label3.ForeColor = System.Drawing.Color.Red;
        }
            
    }
    }
