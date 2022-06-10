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
    public partial class Sign_In : System.Web.UI.Page
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

        protected void btnsignin_Click(object sender, EventArgs e)
        {
            connection();
            string str;
            con.Open();

            if (txtemail.Text == "admin@gmail.com" && txtpassword.Text == "admin")
            {
                Response.Redirect("adminlogin/adminlogin.aspx");
            }
            else
            {

                str = "select count(*) from registration where email='" + txtemail.Text + "' and password='" + txtpassword.Text + "' ";
                SqlCommand cmd = new SqlCommand(str, con);

                int i;
                i = Convert.ToInt16(cmd.ExecuteScalar());

                if (i == 1)
                {
                    Session["email"] = txtemail.Text;
                    ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Login Successfull');window.location='innerhome.aspx'</script>");
                }
                else
                {
                    ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Email or Password.');window.location='Sign_In.aspx'</script>");

                }
            }
        }
    }
}