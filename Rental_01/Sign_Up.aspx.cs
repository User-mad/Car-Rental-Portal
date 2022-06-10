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
    public partial class Sign_Up : System.Web.UI.Page
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

        protected void btnregister_Click(object sender, EventArgs e)
        {
            connection();
            string str;
            con.Open();

            str = "Select Count(*) from registration where email = '" + txtemail.Text + "'";
 
            SqlCommand cmd = new SqlCommand(str, con);
            int i;
            i = Convert.ToInt16(cmd.ExecuteScalar());
            if(i == 1)
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation" , "<script language='javascript'>alert('User Already Exist')</script>");
            }
            else
            {
                string strquery;
                strquery = "insert into registration(name,email,password,profile) values('"+txtname.Text+"','"+txtemail.Text+"','"+txtpassword.Text+"','profile.png')";
                SqlCommand cmd2 = new SqlCommand(strquery, con);
                cmd2.ExecuteNonQuery();

                ClientScript.RegisterStartupScript(Page.GetType(), "validation" , "<script language='javascript'>alert('Account Created')</script>");
            }
        }
    }
}