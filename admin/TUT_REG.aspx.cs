using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class admin_TUT_REG : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (checkeddata() == false)
        {

            con.Close();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["virtualclass"].ToString();
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Parameters.AddWithValue("@email", TextBox1.Text);
            cmd.Parameters.AddWithValue("@password", TextBox2.Text);
            cmd.Parameters.AddWithValue("@mobileno", TextBox3.Text);
            cmd.Parameters.AddWithValue("@tutorid", TextBox4.Text);
            cmd.Parameters.AddWithValue("@tutorname", TextBox5.Text);
            cmd.CommandText = "insert into Tutor(email,password,mobileno,Tut_id,Tutor_name) values(@email,@password,@mobileno,@tutorid,@tutorname)";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label1.ForeColor  = System.Drawing.Color.Green;
        }
        else
        {
            Label1.Text = "change email and tutor id";
        }
        }

    private bool checkeddata()
    {
        bool flag = true;
              
        con.ConnectionString = ConfigurationManager.ConnectionStrings["virtualclass"].ToString();
        con.Open ();
        SqlCommand cmd = new SqlCommand();
        cmd.Parameters.AddWithValue("@email", TextBox1.Text);
        cmd.Parameters.AddWithValue("@tutorid", TextBox4.Text);
        cmd.CommandText = "select * from Tutor where email=@email or Tut_id=@tutorid";
        cmd.Connection = con;
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            if (TextBox1.Text == rd["email"].ToString() && TextBox4.Text == rd["Tut_id"].ToString())
            {
                flag = false;
                con.Close();

                break;

            }
        }
        if (flag == false)
            return true;
        else
            return false;


    }
        
  
}