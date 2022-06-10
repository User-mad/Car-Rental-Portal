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
    public partial class categoryadmin : System.Web.UI.Page
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

        protected void btncategory_Click(object sender, EventArgs e)
        {
           
                string fileName = Path.Combine(Server.MapPath("~/Admin/categoryimage"), carfile.FileName);
                carfile.SaveAs(fileName);
                // carfile.SaveAs(Server.MapPath(".") + @"/categoryimage/" + carfile.FileName);
                connection();
                con.Open();
                string str;

                str = "Insert into category (name,description,image) values('" + txtname.Text + "','" + txtdescription.Text + "','" + carfile.FileName + "')";
                SqlCommand cmd = new SqlCommand(str, con);
                cmd.ExecuteNonQuery();
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Category Added Successfully')</script>");

            
          
        }
    }
}    