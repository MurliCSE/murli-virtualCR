using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class userControl_WebUserControl : System.Web.UI.UserControl
{
    //register reg = new register();
    SqlConnection con = new SqlConnection();

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
        con.Open ();
        SqlCommand cmd=new SqlCommand ();
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
        string username = user.Text;
        string password = pwd.Text;
        string email1 = email.Text;
        string address = add.Text;
        string mob1 = mob.Text;

        int branch1 = Convert.ToInt32 (branch.SelectedValue);
        int  year1 =Convert.ToInt32 ( yr.SelectedValue);
        if (checkmail() == false)
        {
            
            con.ConnectionString = ConfigurationManager.ConnectionStrings["virtualclass"].ToString();
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Parameters.AddWithValue("@usr", username);
            cmd.Parameters.AddWithValue("@pass", password);
            cmd.Parameters.AddWithValue("@eml", email1);
            cmd.Parameters.AddWithValue("@adds", address);
            cmd.Parameters.AddWithValue("@mobile", mob1);
            cmd.Parameters.AddWithValue("@branch", branch1);
            cmd.Parameters.AddWithValue("@year", year1);
            cmd.Parameters.AddWithValue("@pay", "no pay");
            cmd.CommandText = "insert into register(username,password,email,address,mobileno,BranchId,YearId,payment) values(@usr,@pass,@eml,@adds,@mobile,@branch,@year,@pay)";

            cmd.Connection = con;

            cmd.ExecuteNonQuery();
        }
        
    }

    private bool checkmail()
    {
        bool flag = true;

        con.ConnectionString = ConfigurationManager.ConnectionStrings["virtualclass"].ToString();
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Parameters.AddWithValue("@email",email .Text);
     
        cmd.CommandText = "select * from register where email=@email";
        cmd.Connection = con;
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            if (email.Text == rd["email"].ToString())
            {
                flag = false;
                con.Close();

                break;

            }
        }
        if (flag == false)
            return true;
        else
        {
            con.Close();
            return false;
        }

       
    }
   
}