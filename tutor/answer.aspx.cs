using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class tutor_answer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string tut_id=Session["Tut_id"].ToString ();
        string content =Editor1 .Content ;
        string email=TextBox1 .Text ;
        SqlConnection con = new SqlConnection();
        con.ConnectionString =ConfigurationManager .ConnectionStrings ["virtualclass"].ToString ();
        con.Open ();
        SqlCommand cmd=new SqlCommand ();
        cmd.Parameters .AddWithValue ("@tut_id",tut_id);
        cmd.Parameters .AddWithValue ("@cont",content );
        cmd.Parameters .AddWithValue ("@email",email );
              
        cmd.CommandText ="insert into answer(Tut_id,Answer,email) values(@tut_id,@cont,@email)";
        cmd.Connection = con;
       int update= cmd.ExecuteNonQuery();
       if (update > 0)
       {
           Label1.Text = "Submit Answer";
           Label1.ForeColor = System.Drawing.Color.Green;

       }
       else
       {
           Label1.Text = "Answer not Submit";
           Label1.ForeColor = System.Drawing.Color.Red;

       }


    }
}