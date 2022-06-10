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
    public partial class ViewDetailShop : System.Web.UI.Page
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
                string str = "Select * from services where sid='" + Session["sid"].ToString() + "'";
                SqlCommand cmd = new SqlCommand(str, con);
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {

                    lblname.Text = reader["sname"].ToString();

                    lblprice.Text = reader["price"].ToString();

                    lblname.Text = reader["sname"].ToString();

                    lblmileage.Text = reader["mileage"].ToString();


                    lblseats.Text = reader["seat"].ToString();


                    lbltopspeed.Text = reader["topspeed"].ToString();


                    lbltrans.Text = reader["transmission"].ToString();


                    lblbootspace.Text = reader["bootspace"].ToString();

                    image1.ImageUrl = "Admin/serviceimage/" + reader["img2"].ToString();

                    image2.ImageUrl = "Admin/serviceimage/" + reader["img3"].ToString();

                    image3.ImageUrl = "Admin/serviceimage/" + reader["img2"].ToString();

                    image4.ImageUrl = "Admin/serviceimage/" + reader["img3"].ToString();

                    image5.ImageUrl = "Admin/serviceimage/" + reader["img2"].ToString();

                    image6.ImageUrl = "Admin/serviceimage/" + reader["img3"].ToString();

                    image7.ImageUrl = "Admin/serviceimage/" + reader["img2"].ToString();

                    image8.ImageUrl = "Admin/serviceimage/" + reader["img3"].ToString();

                    image9.ImageUrl = "Admin/serviceimage/" + reader["img2"].ToString();

                    image10.ImageUrl = "Admin/serviceimage/" + reader["img3"].ToString();

                    Session["carname"] = lblname.Text;
                    Session["cartopspeed"] = lbltopspeed.Text;
                    Session["carmilage"] = lblmileage.Text;
                    Session["carprice"] = lblprice.Text;


                }




                con.Close();
            }else{
                Response.Redirect("Sign_In.aspx");
            }
        }           
    }
    }
