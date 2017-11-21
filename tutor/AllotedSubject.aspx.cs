using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;
public partial class tutor_AllotedSubject : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
           
            SqlConnection con = new SqlConnection();
            con.ConnectionString =ConfigurationManager.ConnectionStrings ["virtualclass"].ToString ();
            con.Open ();
            SqlCommand cmd=new SqlCommand ();
            cmd.CommandText = "select * from subject_allotment where Tutor_id=" + Convert.ToInt32(Session["Tut_id"].ToString());
            cmd.Connection = con;
            DataSet  dt = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt,"subject_allotment");
            DropDownList1.DataSource = dt;
            DropDownList1.DataTextField = "Subject_code";
            DropDownList1.DataValueField ="Tutor_id";
            DropDownList1.DataBind();
            DropDownList1.Items .Insert(0, "select Subject code");

        }
    }


    protected void Button1_Click1(object sender, EventArgs e)
    {

      

        string pptfile = string.Empty;
        string videofile = string.Empty;
        string subject_code = DropDownList1.SelectedItem.Text;
        string datetime = DateTime.Now.ToString();
        string Tutor_id = Session["Tut_id"].ToString();
       
        if (FileUpload3.HasFile)
        {
            string vidext = System.IO.Path.GetExtension(FileUpload3.FileName);
            if (vidext == ".wmv" || vidext == ".mp4")
            {
                FileUpload3.SaveAs(Server.MapPath("~/tutor/videofile/" + FileUpload3.FileName));
                videofile = "~/tutor/videofile/" + FileUpload3.FileName;
                Label3.Text = videofile;
            }
        }
        if (FileUpload2.HasFile)
        {
            string vidext = System.IO.Path.GetExtension(FileUpload2.FileName);
            if (vidext == ".ppt" || vidext == ".pptx")
            {
                FileUpload2.SaveAs(Server.MapPath("~/tutor/ppt/" + FileUpload2.FileName));
                pptfile = "~/tutor/ppt/" + FileUpload2.FileName;
            }
        }
        if (System.String.IsNullOrEmpty(pptfile) || System.String.IsNullOrEmpty(videofile))
        {
            Label3.Text = "video and ppt file are must";
            Label3.ForeColor = System.Drawing.Color.Red;

        }
        else
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["virtualclass"].ToString();
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Parameters.AddWithValue("@subcode", subject_code);
            cmd.Parameters.AddWithValue("@video", videofile);
            cmd.Parameters.AddWithValue("@ppt", pptfile);
            cmd.Parameters.AddWithValue("@datetime", datetime);
            cmd.Parameters.AddWithValue("@tut_id", Tutor_id);
            cmd.CommandText = "insert into subject_mat(Subject_code,Video_url,ppt_url,date_time,Tutor_id) values(@subcode,@video,@ppt,@datetime,@tut_id)";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label3.Text = "Thank you for submiting Subject data";
            Label3.ForeColor = System.Drawing.Color.Green;



        }

    }

        

   
}