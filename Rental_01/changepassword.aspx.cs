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
    public partial class changepassword : System.Web.UI.Page
    {
        SqlConnection con;

        void connection()
        {
            string cn = ConfigurationManager.ConnectionStrings["rental"].ToString();
            con = new SqlConnection(cn);
        }
        string str;
        int i;
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
           
            con.Open();
            str = "select * from registration ";
            SqlCommand cmd = new SqlCommand(str, con);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                if (txtcurrent.Text == reader["Password"].ToString())
                {
                    i = 1;
                }
            }
            reader.Close();
            con.Close();
            if (i == 1)
            {
                con.Open();
                str = "update registration set password='"+txtnew.Text+"' where email='" + Session["email"].ToString() + "'";
                cmd = new SqlCommand(str, con);
              
                cmd.ExecuteNonQuery();
                con.Close();
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Password Successfully Changed');window.location='Sign_In.aspx'</script>");

            }
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Wrong Current Password');window.location='changepassword.aspx'</script>");

            }
        }
    }
}