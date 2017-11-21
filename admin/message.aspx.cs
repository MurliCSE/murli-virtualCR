using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

public partial class admin_message : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MailMessage msg = new MailMessage();
        msg.From = new MailAddress("mehuljain.jain57@gmail.com");
        msg.To.Add(new MailAddress(TextBox1.Text));
        msg.Body = Editor1.Content;
        SmtpClient clt = new SmtpClient();
        clt.EnableSsl = true;
        clt.Send(msg);

    }
}