using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Rental_01.Admin
{
    public partial class Adminmangecity : System.Web.UI.Page
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

        protected void btncity_Click(object sender, EventArgs e)
        {
            connection();
            string str;
            con.Open();
            str = "Insert into city(cname) values('" + txtcityname.Text + "')";
            SqlCommand cmd1 = new SqlCommand(str, con);
            cmd1.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('City Added Successfully')</script>");

        }
    }
}