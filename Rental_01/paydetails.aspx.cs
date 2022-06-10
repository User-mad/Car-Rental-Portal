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
    public partial class paydetails : System.Web.UI.Page
    {
        SqlConnection con;

        void connection()
        {
            string cn = ConfigurationManager.ConnectionStrings["rental"].ToString();
            con = new SqlConnection(cn);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                string sess = Session["id"].ToString();
                connection();

                string str = "select * from registration where id= '" + sess + "'";
                SqlCommand cmd = new SqlCommand(str, con);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    lbluname.Text = dr["name"].ToString();
                    lbluemail.Text = dr["email"].ToString();
                    lblumobile.Text = dr["mobile"].ToString();

                }

            }
            if (Page.IsPostBack == false)
            {

                lblfname.Text = Session["bfname"].ToString();
                lbllname.Text = Session["blname"].ToString();

                lblpdate.Text = Session["pdate"].ToString();
                lblddate.Text = Session["ddate"].ToString();
                lblploc.Text = Session["ploc"].ToString();



                lbldays.Text = Session["totaldays"].ToString();

                connection(); 
                con.Open();
                string str = "Select cname from city where cid='" + Session["dloc"].ToString() + "'";
                SqlCommand cmd = new SqlCommand(str, con);
                lbldloc.Text = cmd.ExecuteScalar().ToString();


            }



            if (Page.IsPostBack == false)
            {

                connection(); 
                con.Open();
                string str = "Select * from services where sid='" + Session["sid"].ToString() + "'";
                SqlCommand cmd = new SqlCommand(str, con);
                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {


                    lblprice.Text = reader["price"].ToString();
                    lblprice2.Text = reader["price"].ToString();
                    lblservice.Text = reader["sname"].ToString();
                    lblcarname.Text = reader["sname"].ToString();
                    lbltopspeed.Text = reader["topspeed"].ToString();
                    lblmilage.Text = reader["mileage"].ToString();
                    lblbootspace.Text = reader["bootspace"].ToString();
                    simg1.ImageUrl = "/Admin/serviceimage/" + reader["img1"].ToString();
                    string str1 = "select name from category where id='" + reader["category"].ToString() + "'";
                    SqlCommand cmd12 = new SqlCommand(str1, con);
                    lblcategory.Text = cmd12.ExecuteScalar().ToString();

                }

            }



            Int64 tdays = Int64.Parse(Session["totaldays"].ToString());
            Int64 price = Int64.Parse(lblprice.Text);
            Int64 drive = 1000;
            Int64 temp = tdays * price;
            Int64 temp2 = tdays * drive;
            Int64 se = temp + temp2;

            lbldriver2.Text = drive.ToString();
            lbltotprice.Text = se.ToString();
            Session["totalamt"] = lbltotprice.Text;
        }


        protected void btnpay_Click(object sender, EventArgs e)
        {
            Response.Redirect("Payment/payment.aspx");
        }





    }
}