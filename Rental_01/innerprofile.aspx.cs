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
    public partial class innerprofile : System.Web.UI.Page
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
                string str5;
                str5 = "select profile from registration where  email='" + Session["email"].ToString() + "'";
                SqlCommand cmd5 = new SqlCommand(str5, con);
                string pr = cmd5.ExecuteScalar().ToString();

                profileimg.Src = "profileimage/" + pr;
                con.Close();


                string sess = Session["id"].ToString();
                connection();
                string str = "select * from registration where id= '" + sess + "'";
                SqlCommand cmd = new SqlCommand(str, con);
                con.Open();

                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    txtname.Text = dr["name"].ToString();
                    txtemail.Text = dr["email"].ToString();


                    lblname.Text = "NAME:" + dr["fname"].ToString() + "" + dr["lname"].ToString();
                    lblemail.Text = " EMAIL ID:" + dr["email"].ToString();
                    lblphone.Text = "MOBILE NUMBER: " + dr["mobile"].ToString();
                    lbladdress.Text = "ADDRESS: " + dr["address"].ToString();


                }
            }
            else {
                Response.Redirect("Sign_In.aspx");
            }
        
        
        }

        protected void btnupdate_Click1(object sender, EventArgs e)
        {
            profileupload.SaveAs(Server.MapPath(".") + @"/profileimage/" + profileupload.FileName);
            connection();
            con.Open();
            string str2 = "Update registration SET name='" + txtname.Text + "' ,email = '" + txtemail.Text + "',fname= '" + txtfname.Text + "' ,lname = '" + txtlname.Text + "',address ='" + txtaddress.Text + "',mobile= " + txtmobile.Text + " ,profile='" + profileupload.FileName + "'  where id= '" + Session["id"].ToString()+ "' ";
            SqlCommand cmd = new SqlCommand(str2, con);
            cmd.ExecuteNonQuery();
            con.Close();

            
            
            string s = Session["id"].ToString();
            connection();
            string str = "select * from registration where id =' " + s + "'";
            SqlCommand cmd3 = new SqlCommand(str,con);
            con.Open();
            SqlDataReader dr = cmd3.ExecuteReader();

            while (dr.Read())
            {

                lblname.Text = "NAME:" + dr["fname"].ToString() + "" + dr["lname"].ToString();
                lblemail.Text = " EMAIL ID:" + dr["email"].ToString();
                lblphone.Text = "MOBILE NUMBER: " + dr["mobile"].ToString();
                lbladdress.Text = "ADDRESS: " + dr["address"].ToString();
            }
            con.Close();

        }


       
    }
}