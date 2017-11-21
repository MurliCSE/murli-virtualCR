using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class student_asking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string tut_id=DropDownList1 .SelectedItem .Text;
        string content=TextBox1 .Text ;
        string email=Session["email"].ToString ();
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["virtualclass"].ToString();
        con.Open ();
        SqlCommand cmd=new SqlCommand ();
        cmd.Parameters .AddWithValue ("@tut_id",tut_id);
        cmd.Parameters .AddWithValue ("@content",content);
        cmd .Parameters .AddWithValue ("@email",email);
        cmd.Parameters.AddWithValue("@date", DateTime.Now.ToString());

        cmd.CommandText ="insert into asking_question(Tut_id,content1,email,date) values(@tut_id,@content,@email,@date)";
        cmd.Connection =con ;
        cmd.ExecuteNonQuery();
        Label1.Text = "Submit Sucess fully";
        Label1.ForeColor = System.Drawing.Color.Green;


    }
}