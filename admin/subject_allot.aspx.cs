using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


public partial class admin_subject_allot : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            bindtut_id();
            binddatatut_sub();
        }
    }

    private void bindtut_id()
    {
        
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["virtualclass"].ToString();
        con.Open();
        SqlCommand cmd = new SqlCommand();
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter("select Distinct Tut_id from Tutor", con);
        da.Fill(ds, "Tutor");
        DropDownList3.DataSource = ds;
        DropDownList3.DataTextField = "Tut_id";
        DropDownList3.DataValueField = "Tut_id";
        DropDownList3.DataBind();
        DropDownList3.Items.Insert(0,"select Tutor Id");
        con.Close();
        
       
    }

    private void binddatatut_sub()
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["virtualclass"].ToString();
        con.Open ();
        SqlCommand cmd=new SqlCommand ();
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter("select Distinct YearId from Year", con);
        da.Fill(ds,"Year");
        DropDownList1.DataSource = ds;
        DropDownList1.DataTextField ="YearId";
        DropDownList1.DataValueField ="YearId";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, "select year Id");
        con.Close();
        
       
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

        if (DropDownList1.SelectedIndex != 0)
        {

            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["virtualclass"].ToString();
            con.Open();
            SqlCommand cmd = new SqlCommand();
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter("select SubjectCode from subject where YearId=" + DropDownList1.SelectedValue, con);
            da.Fill(ds, "subject");
            DropDownList2.DataSource = ds;
            DropDownList2.DataTextField = "SubjectCode";
            DropDownList2.DataValueField = "SubjectCode";
            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, "select subject code");
            con.Close();

        }


       
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList3.SelectedIndex != 0)
        {

            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["virtualclass"].ToString();
            con.Open();
            SqlCommand cmd = new SqlCommand();
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter("select * from Tutor where Tut_id=" +Convert .ToInt32(DropDownList3.SelectedValue), con);
            da.Fill(ds, "Tutor");
            DropDownList4.DataSource = ds;
            DropDownList4.DataTextField = "Tutor_name";
            DropDownList4.DataValueField = "Tut_id";
            DropDownList4.DataBind();
            con.Close();
        }


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (checkedsubjectcode() == true)
        {
            
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["virtualclass"].ToString();
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Parameters.AddWithValue("@Subject_code", DropDownList2.SelectedValue);
            cmd.Parameters.AddWithValue("@Tutor_id", DropDownList3.SelectedValue);
            cmd.CommandText = "insert into subject_allotment(Subject_code,Tutor_id)values(@Subject_code,@Tutor_id)";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label1.Text = "Subject sucessfully alloted";
            Label1.ForeColor = System.Drawing.Color.Green;

        }
        else
        {
            Label1.Text = "Subject code is already assigned";
            Label1.ForeColor = System.Drawing.Color.Red;
 
        }
    }

    private bool  checkedsubjectcode()
    {
        bool flag = true;
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["virtualclass"].ToString();
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Parameters .AddWithValue ("@Subject_code",DropDownList2 .SelectedValue);
        cmd.CommandText = "select * from subject_allotment where Subject_code=@Subject_code";
        cmd.Connection = con;
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            if (rd["Subject_code"].ToString() == DropDownList2.SelectedValue)
            {
                flag = false;
                con.Close();
                break;

            }
        }
        if (flag == false)
            return false;
        else
            return true;
    }
}