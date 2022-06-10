using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;

namespace Rental_01.Payment
{
    public partial class Payment : System.Web.UI.Page
    {

        SqlConnection con;
        void connection()
        {
            string cn = ConfigurationManager.ConnectionStrings["rental"].ToString();
            con = new SqlConnection(cn);
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnpay_Click(object sender, EventArgs e)
        {
            connection();
            con.Open();
            string date = DateTime.Now.ToString();
            string str = "insert into payment(userid,serviceid,paymentdate,amount) values('" + Session["id"].ToString() + "','" + Session["sid"].ToString() + "','" + date + "','" + Session["totalamt"].ToString() + "')";
            SqlCommand cmd = new SqlCommand(str, con);

            cmd.ExecuteNonQuery();
            Session["bookingdate"] = DateTime.Now;
            con.Close();

            connection();
            con.Open();
            string str2 = "select name from registration where email = '" + Session["email"].ToString() + "'";
            SqlCommand cmd2 = new SqlCommand(str2, con);

            string name;
            name = Convert.ToString(cmd2.ExecuteNonQuery());            
            con.Close();

            MailMessage Msg = new MailMessage();
            // Sender e-mail address.
            Msg.From = new MailAddress("differentguy2020@gmail.com");
            // Recipient e-mail address.
            Msg.To.Add(Session["email"].ToString());
            Msg.Subject = "";
            //Msg.Body = "Your Category is:" + Session["Category"].ToString();

            string body = "  Hey " + name + "!  <br/>";
            body += " Your Order is Confirm. <br/>";
            body += " ThanKYou For Shopping with us! <br/>";


            Msg.Body = body;


            Msg.IsBodyHtml = true;

            /*if (FileUpload1.HasFile)
            {

                Msg.Attachments.Add(new Attachment(FileUpload1.PostedFile.InputStream, FileUpload1.FileName));

            }*/
            // your remote SMTP server IP.
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("differentguy2020@gmail.com", "mylifemyrules");
            smtp.EnableSsl = true;
            smtp.Send(Msg);
            Msg = null;


            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Your Order Confirm');</script>");
        }
    }
}