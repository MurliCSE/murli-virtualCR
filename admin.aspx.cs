using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataSource sds = new SqlDataSource();
        sds.ConnectionString = ConfigurationManager.ConnectionStrings["virtualclass"].ToString();
        sds.SelectParameters.Add("username", user.Text);
        sds.SelectParameters.Add("password", pass.Text);
        sds.SelectCommand = "select * from admin where username=@username and password=@password";
        DataView dv = (DataView)sds.Select(DataSourceSelectArguments.Empty);
        if (dv.Count != 0)
        {
            Session["username"] = dv[0].Row["username"].ToString();
            Response.Redirect("~/admin/login.aspx");
        }
        else
        {
            Label1.Text = "user does not exists";
        }
    }
}