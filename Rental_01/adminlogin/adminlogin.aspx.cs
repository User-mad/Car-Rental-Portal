using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Rental_01.adminlogin
{
    public partial class adminlogin : System.Web.UI.Page
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

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            connection();
            string str;
            con.Open();

            str = "select count(*) from admin_reg where aemail='" + txtusername.Text + "' and apassword='" + txtpass.Text + "'";
            SqlCommand cmd = new SqlCommand(str, con);

            int i;
            i = Convert.ToInt16(cmd.ExecuteScalar());
            con.Close();

            if (i == 1)
            {
                Session["email"] = txtusername.Text;
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Login Successfull');window.location.href='../Admin/adminhome.aspx'</script>");
            }
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Email or Password.');window.location.href='../adminlogin/adminlogin.aspx'</script>");

            }
        }

    }
}