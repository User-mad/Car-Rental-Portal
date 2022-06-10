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
    public partial class innerhome : System.Web.UI.Page
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
                Label1.Visible = false;
                Label3.Visible = false;
                Label2.Visible = false;
                connection();
                string str;
                con.Open();
                Label1.Text = Session["email"].ToString();
                str = "select id from registration where  email='" + Label1.Text + "'";
                SqlCommand cmd = new SqlCommand(str, con);
                Label2.Text = cmd.ExecuteScalar().ToString();

                Session["id"] = Label2.Text;
                con.Close();

                connection();
                con.Open();
                string str12;
                str12 = "select name from registration where  email='" + Label1.Text + "'";
                SqlCommand cmd12 = new SqlCommand(str12, con);
                Label3.Text = cmd12.ExecuteScalar().ToString();

                Session["name"] = Label3.Text;
                con.Close();
            }
            else if(Session["email"] == null)
            {
                Response.Redirect("Sign_In.aspx");
            }
            
            



        }
    }
}