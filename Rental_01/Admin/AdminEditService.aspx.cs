using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


namespace Rental_01.Admin
{
    public partial class AdminEditService : System.Web.UI.Page
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
                string str1 = Session["sid"].ToString();

                connection();
                string str = "Select * from services where sid ='" + str1 + "'";
                SqlCommand cmd = new SqlCommand(str, con);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();

                string str2 = "select * from category";
                SqlCommand cmd1 = new SqlCommand(str2, con);
                dpcategory.DataSource = cmd1.ExecuteReader();
                dpcategory.DataTextField = "name";
                dpcategory.DataValueField = "id";
                dpcategory.DataBind();
                dpcategory.Items.Insert(0, "Select Category");

                string str3 = "select * from city";
                SqlCommand cmd2 = new SqlCommand(str3, con);
                dpcity.DataSource = cmd2.ExecuteReader();
                dpcity.DataTextField = "cname";
                dpcity.DataValueField = "cid";
                dpcity.DataBind();
                dpcity.Items.Insert(0, "Select City");

                while (dr.Read())
                {
                    txtsname.Text = dr["sname"].ToString();
                     txthour.Text = dr["hours"].ToString();
                    txtprice.Text = dr["price"].ToString();
                  
                    txtdescription.Text = dr["description"].ToString();
                    txtseat.Text = dr["seat"].ToString();
                    txtmilage.Text = dr["mileage"].ToString();
                    txttopspeed.Text = dr["topspeed"].ToString();
                    txtbootspace.Text = dr["bootspace"].ToString();
                    txttransmission.Text = dr["transmission"].ToString();
                    simg1.ImageUrl = "/Admin/serviceimage/" + dr["img1"].ToString();
                    simg2.ImageUrl = "/Admin/serviceimage/" + dr["img2"].ToString();
                    simg3.ImageUrl = "/Admin/serviceimage/" + dr["img3"].ToString();
                    dpcategory.Text = dr["category"].ToString();
                    dpcity.Text = dr["city"].ToString();
                }
                con.Close();
            }

        }

       

        protected void btnsubmit_Click(object sender, EventArgs e)
        {

            connection();

            if (image1.HasFile && image2.HasFile && image3.HasFile)
            {
                string fileName = Path.Combine(Server.MapPath("~/Admin/serviceimage"), image1.FileName);
                image1.SaveAs(fileName);
                string fileName1 = Path.Combine(Server.MapPath("~/Admin/serviceimage"), image2.FileName);
                image2.SaveAs(fileName1);
                string fileName2 = Path.Combine(Server.MapPath("~/Admin/serviceimage"), image3.FileName);
                image3.SaveAs(fileName2);



                string str2 = "update services set sname = '" + txtsname.Text + "', price = '" + txtprice.Text + "', description = '" + txtdescription.Text + "', seat = '" + txtseat.Text + "', mileage = '" + txtmilage.Text + "', topspeed = '" + txttopspeed.Text + "', bootspace = '" + txtbootspace.Text + "', transmission = '" + txttransmission.Text + "', img1 = '" + image1.FileName + "', img2 = '" + image2.FileName + "', img3 = '" + image3.FileName + "',city='"+dpcity.SelectedItem.Value.ToString()+"' where sid = '" + Session["sid"].ToString() + "'";
                SqlCommand cmd2 = new SqlCommand(str2, con);
                con.Open();
                cmd2.ExecuteNonQuery();
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Updated Successfully');</script>");
                //Label1.Text = "Info Updated.";
                con.Close();
            }
            else
            {
                string str2 = "update services set sname = '" + txtsname.Text + "', price = '" + txtprice.Text + "', description = '" + txtdescription.Text + "', seat = '" + txtseat.Text + "', mileage = '" + txtmilage.Text + "', topspeed = '" + txttopspeed.Text + "', bootspace = '" + txtbootspace.Text + "', transmission = '" + txttransmission.Text + "',city='" + dpcity.SelectedItem.Value.ToString() + "' where sid = '" + Session["sid"].ToString() + "'";
                SqlCommand cmd2 = new SqlCommand(str2, con);
                con.Open();
                cmd2.ExecuteNonQuery();
               // Label1.Text = "Info Updated.";
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Updated Successfully');</script>");
                con.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminmangeservice.aspx");
        }
    }
}