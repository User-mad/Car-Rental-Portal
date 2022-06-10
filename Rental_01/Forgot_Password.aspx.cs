using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Configuration;

namespace Rental_01
{
    public partial class Forgot_Password : System.Web.UI.Page
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

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            connection();

            string str;
            str = "Select password from registration where email='" + txtemail.Text + "'";

            SqlCommand cmd = new SqlCommand(str, con);
            con.Open();

            String passwrd;
            passwrd = Convert.ToString(cmd.ExecuteScalar());
            con.Close();

            connection();
            string str1;
            str1 = "Select Count(*) from registration where email='" + txtemail.Text + "'";
            SqlCommand cmd1 = new SqlCommand(str1, con);
            con.Open();

            int i;
            i = Convert.ToInt16(cmd1.ExecuteScalar());

            if (i == 1)
            {
                //Automatic Mail-------------------------------------
                try
                {
                    MailMessage Msg = new MailMessage();
                    // Sender e-mail address.
                    Msg.From = new MailAddress("cocherentalportal@gmail.com");
                    // Recipient e-mail address.
                    Msg.To.Add(txtemail.Text);
                    Msg.Subject = "Your Password is";
                    //Msg.Body = "Your Category is:" + Session["Category"].ToString();

                    string body = "  Hey Coche User! Your Email Id is: " + txtemail.Text + "<br/>";
                    body += " Your Password is: " + passwrd + "<br/>";
                    body += " ThanKYou For being with us! <br/>";


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
                    smtp.Credentials = new System.Net.NetworkCredential("cocherentalportal@gmail.com", "sahilrutvik");
                    smtp.EnableSsl = true;
                    smtp.Send(Msg);
                    Msg = null;
                    ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Mail Sent Thank you...');window.location='Sign_In.aspx'</script>");
                  //  Page.RegisterStartupScript("UserMsg", "<script>alert('Mail sent thank you...');if(alert){ window.location='Sign_In.aspx';}</script>");
                    
                }
                catch (Exception ex)
                {
                    //Console.WriteLine("{0} Exception caught.", ex);
                    //Label1.Text = ex.ToString();
                }


                //----------------------------------------------------
            }
            else
            {
                //Label1.Text = "Invalid User";
            }
        }
    }
}