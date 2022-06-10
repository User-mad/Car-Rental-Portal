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
    public partial class checkemailpass : System.Web.UI.Page
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
            con.Open();

            str = "select count(*) from registration where email='" + txtemail.Text + "'";
            SqlCommand cmd = new SqlCommand(str, con);

            int i;
            i = Convert.ToInt16(cmd.ExecuteScalar());

            if (i == 1)
            {
                Session["email"] = txtemail.Text;
             //   ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Login Successfull');window.location='innerhome.aspx'</script>");
                Response.Redirect("changepassword.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Email');window.location='checkemailpass.aspx'</script>");

            }
        }
    }
}