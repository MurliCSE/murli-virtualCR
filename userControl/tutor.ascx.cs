using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class userControl_tutor : System.Web.UI.UserControl
{
   

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["virtualclass"].ToString();
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Parameters .AddWithValue ("@email",tuser.Text);
        cmd.Parameters .AddWithValue ("@pass",tpass.Text);
        cmd.CommandText = "select * from Tutor where email=@email and password=@pass";
        cmd.Connection = con;
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            if (rd["email"].ToString() == tuser.Text && rd["password"].ToString() == tpass.Text)
            {
                Session["email"] = rd["email"].ToString();
                Session["Tut_id"] = rd["Tut_id"].ToString();
                Response.Redirect("~/tutor/changePassword.aspx");
                break;
            }
        }

    }
}