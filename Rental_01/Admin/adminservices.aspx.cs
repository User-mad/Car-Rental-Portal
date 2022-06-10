using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;


namespace Rental_01.Admin
{
    public partial class adminservices : System.Web.UI.Page
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
                    connection();
                    string str;
                    str = "select * from category";
                    SqlCommand cmd = new SqlCommand(str,con);
                    con.Open();
                    DropDownList1.DataSource = cmd.ExecuteReader();
                    DropDownList1.DataTextField = "name";
                    DropDownList1.DataValueField = "id";
                    DropDownList1.DataBind();
                    DropDownList1.Items.Insert(0, "Select Category");
                    con.Close();

            }
            if (Page.IsPostBack == false)
            {
                connection();
                string str;
                str = "select * from city";
                SqlCommand cmd = new SqlCommand(str, con);
                con.Open();
                DropDownList2.DataSource = cmd.ExecuteReader();
                DropDownList2.DataTextField = "cname";
                DropDownList2.DataValueField = "cid";
                DropDownList2.DataBind();
                DropDownList2.Items.Insert(0, "Select Category");
                con.Close();

            }

        }

        protected void btnservices_Click(object sender, EventArgs e)
        {
            string fileName = Path.Combine(Server.MapPath("~/Admin/serviceimage"), imageup1.FileName);
            imageup1.SaveAs(fileName);
            string fileName1 = Path.Combine(Server.MapPath("~/Admin/serviceimage"), imageup2.FileName);
            imageup2.SaveAs(fileName1);
            string fileName2 = Path.Combine(Server.MapPath("~/Admin/serviceimage"), imageup3.FileName);
            imageup3.SaveAs(fileName2);
            
            // imageup1.SaveAs(Server.MapPath("serviceimg//" + imageup1.FileName));
            //imageup2.SaveAs(Server.MapPath("serviceimg//" + imageup2.FileName));
            //imageup3.SaveAs(Server.MapPath("serviceimg//" + imageup3.FileName)); 
            //imageup1.SaveAs(Server.MapPath(".") + @"/../serviceimage/" + imageup1.FileName);
            //imageup2.SaveAs(Server.MapPath(".") + @"/../serviceimage/" + imageup2.FileName);
            //imageup3.SaveAs(Server.MapPath(".") + @"/../serviceimage/" + imageup3.FileName);
            connection();
            string str;
            con.Open();
            str = "Insert into services(sname,category,hours,price,description,img1,img2,img3,seat,mileage,topspeed,bootspace,transmission) values('" + txtservicename.Text + "','" + DropDownList1.SelectedItem.Value + "','" + txthours.Text + "','" + txtprice.Text + "','" + txtdescription.Text + "','" + imageup1.FileName + "','" + imageup2.FileName + "','" + imageup3.FileName + "','" + txtseats.Text + "','" + txtmileage.Text + "','" + txtspeed.Text + "','" + txtboot.Text + "','" + txttrans.Text + "')";
            SqlCommand cmd1 = new SqlCommand(str, con);
            cmd1.ExecuteNonQuery();
            con.Close();
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Services Added Successfully')</script>");


        }

       
    }
}