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
    public partial class Innermaster : System.Web.UI.MasterPage
    {

        SqlConnection con;

        void connection()
        {
            string cn = ConfigurationManager.ConnectionStrings["rental"].ToString();
            con = new SqlConnection(cn);
        }

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["email"] != null)
            {
                connection();
                con.Open();
                string str;
                str = "select profile from registration where  email='" + Session["email"].ToString() + "'";
                SqlCommand cmd = new SqlCommand(str, con);
                string pr = cmd.ExecuteScalar().ToString();

                profileimg.Src = "profileimage/" + pr;
                

                string str12;
                str12 = "select name from registration where  email='" + Session["email"].ToString() + "'";
                SqlCommand cmd2 = new SqlCommand(str12, con);
                SqlDataReader dr = cmd2.ExecuteReader();

                while(dr.Read())
                {
                    lblpname.Text = dr["name"].ToString();
                }
                con.Close();
            }
            else {
                Response.Redirect("Home.aspx");
            }
        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Home.aspx");
        }
    }
}