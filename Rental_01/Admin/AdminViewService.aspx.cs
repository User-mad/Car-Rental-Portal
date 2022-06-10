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
    public partial class AdminViewService : System.Web.UI.Page
    {

        SqlConnection con;

        void connection()
        {
            string cn = ConfigurationManager.ConnectionStrings["rental"].ToString();
            con = new SqlConnection(cn);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            connection();
            con.Open();
            string str = "Select * from services where sid='" + Session["sid"].ToString () + "'";
            SqlCommand cmd = new SqlCommand(str,con);
            SqlDataReader reader = cmd.ExecuteReader();
          
            while (reader.Read())
            {

                lblname.Text = reader["sname"].ToString();
                lblsname.Text = reader["sname"].ToString();
                lblprice.Text = reader["price"].ToString();
                lblhours.Text = reader["hours"].ToString();
                lblmileage.Text = reader["mileage"].ToString();
                lbldesc.Text = reader["description"].ToString();
                lblseats.Text = reader["seat"].ToString();
                lbltopspeed.Text = reader["topspeed"].ToString();
                lbltransmission.Text = reader["transmission"].ToString();
                lblbootspace.Text = reader["bootspace"].ToString();
                simg1.ImageUrl = "/Admin/serviceimage/" + reader["img1"].ToString();
                simg2.ImageUrl = "/Admin/serviceimage/" + reader["img2"].ToString();
                simg3.ImageUrl = "/Admin/serviceimage/" + reader["img3"].ToString();

               
                string  str1 = "select name from category where id='" + reader["category"].ToString() +"'";
                SqlCommand cmd12 = new SqlCommand(str1, con);
                lblcategory.Text = cmd12.ExecuteScalar().ToString();
            }
            con.Close();

          
         

        }

      
    }
}