using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class admin_login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        int flag = 0;
        SqlCommand cmd1 = new SqlCommand();
       
        con.ConnectionString = ConfigurationManager.ConnectionStrings["virtualclass"].ToString();
        con.Open ();
       SqlCommand cmd=new SqlCommand ();
        
        cmd .Parameters .AddWithValue ("@password",TextBox1 .Text );
        cmd.Parameters.AddWithValue("@password1", TextBox2.Text);
        cmd.CommandText ="select * from admin where  password=@password";
        cmd.Connection =con ;
        SqlDataReader rd=cmd.ExecuteReader();
        cmd.Dispose();
        while (rd.Read())
        {
            if (rd["password"].ToString() == TextBox1.Text)
            {

                flag = 1;
                con.Close();
                break;

            }
           

        }
        rd .Dispose ();
        if (flag == 1)
        {
            updatedata();
        }
        else
        {
            Label1.Text = "password not match";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
        

    }

    private void updatedata()
    {
       

        con.ConnectionString = ConfigurationManager.ConnectionStrings["virtualclass"].ToString();
        con.Open();
        SqlCommand cmd1 = new SqlCommand();
        cmd1 .Parameters .AddWithValue ("@password1",TextBox2 .Text );

        cmd1.CommandText = "update admin set password=@password1";
        cmd1.Connection = con;
       int update= cmd1.ExecuteNonQuery();
       if (update > 0)
       {
           Label1.Text = " update password";
           Label1.ForeColor = System.Drawing.Color.Green;
       }

        
    }
   
}