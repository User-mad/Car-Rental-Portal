using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Rental_01
{
    public partial class Contact : System.Web.UI.Page
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

        protected void btnfeedback_Click(object sender, EventArgs e)
        {
            connection();
            string str;
            con.Open();
            str = "insert into feedback(name,email,phone,subject,message) values('" + txtname.Text + "','" + txtemail.Text + "','" + txtphone.Text + "','" + txtsubject.Text + "','" + txtmessage.Text + "')";
            SqlCommand cmd2 = new SqlCommand(str, con);
            cmd2.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Feedback Successfully Received.');window.location='Home.aspx'</script>");
             
        }
    }
}